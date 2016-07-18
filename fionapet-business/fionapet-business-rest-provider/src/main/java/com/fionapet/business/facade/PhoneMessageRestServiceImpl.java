package com.fionapet.business.facade;

import com.fionapet.business.entity.PhoneMessage;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.PhoneMessageService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 电话信息表
* Created by tom on 2016-07-18 11:56:08.
 */
public class PhoneMessageRestServiceImpl extends RestServiceBase<PhoneMessage> implements PhoneMessageRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(PhoneMessageRestServiceImpl.class);

    private PhoneMessageService phoneMessageService;

    public PhoneMessageService getPhoneMessageService() {
        return phoneMessageService;
    }

    public void setPhoneMessageService(PhoneMessageService phoneMessageService) {
        this.phoneMessageService = phoneMessageService;
    }

    @Override
    public CURDService<PhoneMessage> getService() {
        return phoneMessageService;
    }

}
