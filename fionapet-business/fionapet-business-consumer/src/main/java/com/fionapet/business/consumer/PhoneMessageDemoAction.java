package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.PhoneMessage;
import com.fionapet.business.service.PhoneMessageService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-18 11:00:45.
 */
public class PhoneMessageDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(PhoneMessageDemoAction.class);
    private PhoneMessageService phoneMessageService;

    public PhoneMessageService getPhoneMessageService() {
        return phoneMessageService;
    }

    public void setPhoneMessageService(PhoneMessageService phoneMessageService) {
        this.phoneMessageService = phoneMessageService;
    }

    public void start() throws Exception {
        List<PhoneMessage> phoneMessages = phoneMessageService.listAll();
        assert(phoneMessages != null);
        assert(phoneMessages.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(phoneMessages));
    }
}
