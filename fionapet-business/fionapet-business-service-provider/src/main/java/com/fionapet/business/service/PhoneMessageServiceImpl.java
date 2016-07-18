package com.fionapet.business.service;

import com.fionapet.business.entity.PhoneMessage;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.PhoneMessageDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  电话信息表
* Created by tom on 2016-07-18 11:56:08.
 */
public class PhoneMessageServiceImpl extends CURDServiceBase<PhoneMessage> implements PhoneMessageService {
    @Autowired
    private PhoneMessageDao phoneMessageDao;

    @Override
    public DaoBase<PhoneMessage> getDao() {
        return phoneMessageDao;
    }
}
