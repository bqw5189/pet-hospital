package com.fionapet.business.service;

import com.fionapet.business.entity.InputMoneyRecord;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.InputMoneyRecordDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  收款记录表
* Created by tom on 2016-07-25 09:32:32.
 */
public class InputMoneyRecordServiceImpl extends CURDServiceBase<InputMoneyRecord> implements InputMoneyRecordService {
    @Autowired
    private InputMoneyRecordDao inputMoneyRecordDao;

    @Override
    public DaoBase<InputMoneyRecord> getDao() {
        return inputMoneyRecordDao;
    }
}
