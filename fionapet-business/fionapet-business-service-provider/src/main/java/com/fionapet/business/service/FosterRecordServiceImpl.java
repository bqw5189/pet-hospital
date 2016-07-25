package com.fionapet.business.service;

import com.fionapet.business.entity.FosterRecord;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.FosterRecordDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  养育记录主表
* Created by tom on 2016-07-25 09:32:32.
 */
public class FosterRecordServiceImpl extends CURDServiceBase<FosterRecord> implements FosterRecordService {
    @Autowired
    private FosterRecordDao fosterRecordDao;

    @Override
    public DaoBase<FosterRecord> getDao() {
        return fosterRecordDao;
    }
}
