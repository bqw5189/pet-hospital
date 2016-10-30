package com.fionapet.business.service;

import com.fionapet.business.entity.*;
import com.fionapet.business.facade.vo.BillItemVO;
import com.fionapet.business.facade.vo.PayVO;
import com.fionapet.business.repository.*;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import org.springframework.beans.factory.annotation.Autowired;

import javax.transaction.Transactional;
import java.util.*;

/**
 *  顾客影像记录表
* Created by tom on 2016-07-25 09:32:34.
 */
public class GestPaidRecordServiceImpl extends CURDServiceBase<GestPaidRecord> implements GestPaidRecordService {
    @Autowired
    private GestPaidRecordDao gestPaidRecordDao;

    @Autowired
    private GestDao gestDao;

    @Autowired
    private PetDao petDao;

    @Autowired
    private BillVODao billVODao;
    @Autowired
    private SettleAccountsDao settleAccountsDao;
    @Autowired
    private DictTypeDetailDao dictTypeDetailDao;

    @Autowired
    private FinanceSettleAccountsService financeSettleAccountsService;
    @Autowired
    private AppConfigService appConfigService;
    @Autowired
    private FinanceSettleAccountsDetailService financeSettleAccountsDetailService;
    @Autowired
    private MedicRegisterRecordService medicRegisterRecordService;

    @Autowired
    private  MedicPrescriptionDetailService medicPrescriptionDetailService;

    @Override
    public DaoBase<GestPaidRecord> getDao() {
        return gestPaidRecordDao;
    }

    @Override
    public List<BillVO> billList() {
        List<BillVO> result = billVODao.findAllBy();
        return result;
    }

    @Override
    public List<SettleAccountsView> billDetail(String gestId) {
        List<SettleAccountsView> result = settleAccountsDao.findByGestId(gestId);

        return result;
    }

    @Override
    @Transactional
    public FinanceSettleAccounts pay(PayVO pay) {

        if (null == pay)
            return new FinanceSettleAccounts();

        List<SettleAccountsView> payList = pay.getSettleAccountsViews();

        if (payList.size() == 0){
            return  new FinanceSettleAccounts();
        }

        Double total = 0D;
        for (SettleAccountsView settleAccountsView: payList){
            total += (settleAccountsView.getItemCost() * Double.parseDouble(settleAccountsView.getItemNum()));
        }

        //已支付 状态
        DictTypeDetail dictTypeDetail = dictTypeDetailDao.findByDictDetailCode("SM00051");

        //会员信息
        Gest gest = gestDao.findOne(payList.get(0).getGestId());

        //支付记录
        financeSettleAccountsService.setCurrentUser(getCurrentUser());

        FinanceSettleAccounts financeSettleAccounts = new FinanceSettleAccounts();
        financeSettleAccounts.setGestCode(gest.getGestCode());
        financeSettleAccounts.setGestId(gest.getId());
        financeSettleAccounts.setGestName(gest.getGestName());

        financeSettleAccounts.setStatus(dictTypeDetail);
        financeSettleAccounts.setTotalMoney(total);
        financeSettleAccounts.setShouldPaidMoney(total);
        //付款金额
        financeSettleAccounts.setFactPaidMoney(Double.parseDouble(pay.getGestPaidRecord().getOperateContent()));
        //找零
        financeSettleAccounts.setChangeMoney(financeSettleAccounts.getFactPaidMoney()-total);
        appConfigService.setCurrentUser(getCurrentUser());
        financeSettleAccounts.setSettleCode(appConfigService.genNumberByName("结算单号"));

        financeSettleAccountsService.createOrUpdte(financeSettleAccounts);

        String financeSettleAccountsId = financeSettleAccounts.getId();

        financeSettleAccountsDetailService.setCurrentUser(getCurrentUser());
        medicRegisterRecordService.setCurrentUser(getCurrentUser());
        medicPrescriptionDetailService.setCurrentUser(getCurrentUser());

        for (SettleAccountsView settleAccountsView: payList){
            FinanceSettleAccountsDetail financeSettleAccountsDetail = new FinanceSettleAccountsDetail();

            financeSettleAccountsDetail.setStatus(CMSEntity.DEFAULT());
            financeSettleAccountsDetail.setSettleAccountsDetailId(financeSettleAccountsId);
            try {
                financeSettleAccountsDetail.setBusiTypeId(Integer.parseInt(settleAccountsView.getBusiTypeId()));
            }catch (Exception e){

            }
            financeSettleAccountsDetail.setItemCode(settleAccountsView.getItemCode());
            financeSettleAccountsDetail.setItemName(settleAccountsView.getItemName());
            financeSettleAccountsDetail.setPaidStatus(dictTypeDetail.getDictDetailCode());
            financeSettleAccountsDetail.setPackageUnit(settleAccountsView.getItemUnit());
            financeSettleAccountsDetail.setTotalCost(settleAccountsView.getItemCost());
            financeSettleAccountsDetail.setTotalNum(Double.parseDouble(settleAccountsView.getItemNum()));
            financeSettleAccountsDetail.setRelationDetailId(settleAccountsView.getRelationDetailId());
            financeSettleAccountsDetail.setRelationId(settleAccountsView.getRelationId());

            financeSettleAccountsDetailService.createOrUpdte(financeSettleAccountsDetail);

            if ("挂号费用".equals(settleAccountsView.getBusinessType())){
                MedicRegisterRecord medicRegisterRecord = medicRegisterRecordService.detail(settleAccountsView.getRelationId());
                medicRegisterRecord.setPaidStatus(dictTypeDetail.getDictDetailCode());
                medicRegisterRecord.setPaidTime(new Date());
                medicRegisterRecordService.createOrUpdte(medicRegisterRecord);
            }

            if ("处置处方".equals(settleAccountsView.getBusinessType())){
                MedicPrescriptionDetail medicPrescriptionDetail = medicPrescriptionDetailService.detail(settleAccountsView.getRelationDetailId());
                medicPrescriptionDetail.setPaidStatus(dictTypeDetail.getDictDetailCode());
                medicPrescriptionDetail.setPaidTime(new Date());
                medicPrescriptionDetailService.createOrUpdte(medicPrescriptionDetail);
            }
        }

        GestPaidRecord gestPaidRecord = new GestPaidRecord();
        gestPaidRecord.setGestId(gest.getId());
        gestPaidRecord.setGestName(gest.getGestName());
        gestPaidRecord.setOperateAction(pay.getGestPaidRecord().getOperateAction());
        gestPaidRecord.setSettleAccountsId(financeSettleAccountsId);
        gestPaidRecord.setOperateContent(pay.getGestPaidRecord().getOperateContent());

        createOrUpdte(gestPaidRecord);

        return financeSettleAccounts;
    }
}
