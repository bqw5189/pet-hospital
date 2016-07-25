package com.fionapet.business.service;

import com.fionapet.business.entity.InHospitalRecord;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.InHospitalRecordDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  医院记录表
* Created by tom on 2016-07-25 09:32:32.
 */
public class InHospitalRecordServiceImpl extends CURDServiceBase<InHospitalRecord> implements InHospitalRecordService {
    @Autowired
    private InHospitalRecordDao inHospitalRecordDao;

    @Override
    public DaoBase<InHospitalRecord> getDao() {
        return inHospitalRecordDao;
    }
}
