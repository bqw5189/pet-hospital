package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.SerialNumber;
import com.fionapet.business.service.SerialNumberService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-18 11:09:24.
 */
public class SerialNumberDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(SerialNumberDemoAction.class);
    private SerialNumberService serialNumberService;

    public SerialNumberService getSerialNumberService() {
        return serialNumberService;
    }

    public void setSerialNumberService(SerialNumberService serialNumberService) {
        this.serialNumberService = serialNumberService;
    }

    public void start() throws Exception {
        List<SerialNumber> serialNumbers = serialNumberService.listAll();
        assert(serialNumbers != null);
        assert(serialNumbers.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(serialNumbers));
    }
}
