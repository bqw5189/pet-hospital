package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.FifoLog;
import com.fionapet.business.service.FifoLogService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-25 09:32:31.
 */
public class FifoLogDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(FifoLogDemoAction.class);
    private FifoLogService fifoLogService;

    public FifoLogService getFifoLogService() {
        return fifoLogService;
    }

    public void setFifoLogService(FifoLogService fifoLogService) {
        this.fifoLogService = fifoLogService;
    }

    public void start() throws Exception {
        List<FifoLog> fifoLogs = fifoLogService.listAll();
        assert(fifoLogs != null);
        assert(fifoLogs.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(fifoLogs));
    }
}
