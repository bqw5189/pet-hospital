package com.fionapet.business.service;

import com.fionapet.business.entity.MedicMedictreatRecord;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.MedicMedictreatRecordDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  医生处理记录
* Created by tom on 2016-07-18 11:56:10.
 */
public class MedicMedictreatRecordServiceImpl extends CURDServiceBase<MedicMedictreatRecord> implements MedicMedictreatRecordService {
    @Autowired
    private MedicMedictreatRecordDao medicMedictreatRecordDao;

    @Override
    public DaoBase<MedicMedictreatRecord> getDao() {
        return medicMedictreatRecordDao;
    }
}
