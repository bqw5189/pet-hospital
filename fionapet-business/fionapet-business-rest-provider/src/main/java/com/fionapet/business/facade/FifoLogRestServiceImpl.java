package com.fionapet.business.facade;

import com.fionapet.business.entity.FifoLog;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.FifoLogService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 进库出库日志
* Created by tom on 2016-07-25 09:32:31.
 */
public class FifoLogRestServiceImpl extends RestServiceBase<FifoLog> implements FifoLogRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(FifoLogRestServiceImpl.class);

    private FifoLogService fifoLogService;

    public FifoLogService getFifoLogService() {
        return fifoLogService;
    }

    public void setFifoLogService(FifoLogService fifoLogService) {
        this.fifoLogService = fifoLogService;
    }

    @Override
    public CURDService<FifoLog> getService() {
        return fifoLogService;
    }

}
