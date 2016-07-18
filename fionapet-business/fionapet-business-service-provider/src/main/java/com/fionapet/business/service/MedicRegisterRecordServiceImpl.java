package com.fionapet.business.service;

import com.fionapet.business.entity.MedicRegisterRecord;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.MedicRegisterRecordDao;
import org.springframework.beans.factory.annotation.Autowired;

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
}
