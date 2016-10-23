package com.fionapet.business.service;

import com.fionapet.business.entity.MedicRegisterRecord;
import com.fionapet.business.facade.vo.BillItemVO;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.MedicRegisterRecordDao;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.List;

/**
 *  医生登记记录明细
* Created by tom on 2016-07-18 11:56:10.
 */
public class MedicRegisterRecordServiceImpl extends CURDServiceBase<MedicRegisterRecord> implements MedicRegisterRecordService {
    @Autowired
    private MedicRegisterRecordDao medicRegisterRecordDao;

    @Override
    public DaoBase<MedicRegisterRecord> getDao() {
        return medicRegisterRecordDao;
    }

    @Override
    public List<BillItemVO> billDetail(String id) {
        List<BillItemVO> result = new ArrayList<BillItemVO>();

        List<MedicRegisterRecord> medicRegisterRecords = medicRegisterRecordDao.findByPetIdAndPaidStatusNot(id, "SM00051");

        for (MedicRegisterRecord medicRegisterRecord: medicRegisterRecords){
            BillItemVO billItemVO = new BillItemVO();

            billItemVO.setId(medicRegisterRecord.getId());
            billItemVO.setCount(1);
            billItemVO.setOldPrice(medicRegisterRecord.getRegisterPrice());
            billItemVO.setPrice(medicRegisterRecord.getRegisterPrice());

            result.add(billItemVO);
        }

        return result;
    }
}
