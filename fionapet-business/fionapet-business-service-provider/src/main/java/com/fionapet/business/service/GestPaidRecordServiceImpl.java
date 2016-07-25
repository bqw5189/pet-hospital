package com.fionapet.business.service;

import com.fionapet.business.entity.GestPaidRecord;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.GestPaidRecordDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  顾客影像记录表
* Created by tom on 2016-07-25 09:32:34.
 */
public class GestPaidRecordServiceImpl extends CURDServiceBase<GestPaidRecord> implements GestPaidRecordService {
    @Autowired
    private GestPaidRecordDao gestPaidRecordDao;

    @Override
    public DaoBase<GestPaidRecord> getDao() {
        return gestPaidRecordDao;
    }
}
