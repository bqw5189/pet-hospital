package com.fionapet.business.facade;

import com.fionapet.business.entity.SerialNumber;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.SerialNumberService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 序列号
* Created by tom on 2016-07-18 11:56:11.
 */
public class SerialNumberRestServiceImpl extends RestServiceBase<SerialNumber> implements SerialNumberRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(SerialNumberRestServiceImpl.class);

    private SerialNumberService serialNumberService;

    public SerialNumberService getSerialNumberService() {
        return serialNumberService;
    }

    public void setSerialNumberService(SerialNumberService serialNumberService) {
        this.serialNumberService = serialNumberService;
    }

    @Override
    public CURDService<SerialNumber> getService() {
        return serialNumberService;
    }

}
