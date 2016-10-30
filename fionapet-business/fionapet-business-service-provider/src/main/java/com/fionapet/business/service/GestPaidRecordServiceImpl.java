package com.fionapet.business.service;

import com.fionapet.business.entity.*;
import com.fionapet.business.facade.vo.BillItemVO;
import com.fionapet.business.repository.*;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import org.springframework.beans.factory.annotation.Autowired;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
    private MedicRegisterRecordService medicRegisterRecordService;

    @Autowired
    private BillVODao billVODao;
    @Autowired
    private SettleAccountsDao settleAccountsDao;
    @Autowired
    private DictTypeDetailDao dictTypeDetailDao;

    @Autowired
    private FinanceSettleAccountsDao financeSettleAccountsDao;
    @Autowired
    private FinanceSettleAccountsDetailDao financeSettleAccountsDetailDao;

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
    public List<SettleAccountsView> pay(List<SettleAccountsView> payList) {

        if (payList.size() == 0){
            return payList;
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
        FinanceSettleAccounts financeSettleAccounts = new FinanceSettleAccounts();
        financeSettleAccounts.setGestCode(gest.getGestCode());
        financeSettleAccounts.setGestId(gest.getId());
        financeSettleAccounts.setStatus(dictTypeDetail);
        financeSettleAccounts.setTotalMoney(total);
        financeSettleAccounts.setShouldPaidMoney(total);
        financeSettleAccounts.setFactPaidMoney(total);




        return null;
    }
}
