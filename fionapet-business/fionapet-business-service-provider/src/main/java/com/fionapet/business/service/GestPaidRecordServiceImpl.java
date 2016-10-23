package com.fionapet.business.service;

import com.fionapet.business.entity.Gest;
import com.fionapet.business.entity.GestPaidRecord;
import com.fionapet.business.entity.Pet;
import com.fionapet.business.facade.vo.BillItemVO;
import com.fionapet.business.facade.vo.BillVO;
import com.fionapet.business.repository.GestDao;
import com.fionapet.business.repository.PetDao;
import org.apache.commons.lang.time.DateFormatUtils;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.GestPaidRecordDao;
import org.springframework.beans.factory.annotation.Autowired;

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

    @Override
    public DaoBase<GestPaidRecord> getDao() {
        return gestPaidRecordDao;
    }

    @Override
    public List<BillVO> billList() {
        List<BillVO> result = new ArrayList<BillVO>();
        List<Gest> gests = gestDao.findByPaidStatusNot("SM00051");

        for (Gest gest:gests){
            BillVO billVO = new BillVO();

            billVO.setGestName(gest.getGestName());
            billVO.setGestNo(gest.getGestCode());
            billVO.setPhone(gest.getMobilePhone());
            billVO.setLastPayDate(DateFormatUtils.format(System.currentTimeMillis(), "yyyy年MM月dd"));
            billVO.setTotal(0);

            result.add(billVO);
        }

        return result;
    }

    @Override
    public Map<String, List<BillItemVO>> billDetail(String gestId) {
        Map<String, List<BillItemVO>> result = new HashMap<String, List<BillItemVO>>();
        List<Pet> pets = petDao.findByGestId(gestId);

        for (Pet pet: pets){
            List<BillItemVO> registers = medicRegisterRecordService.billDetail(pet.getId());
            result.put("挂号费用", registers);
        }

        return result;
    }
}
