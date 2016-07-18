package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.MicroSmsConfig;
import com.fionapet.business.service.MicroSmsConfigService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-18 11:09:23.
 */
public class MicroSmsConfigDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(MicroSmsConfigDemoAction.class);
    private MicroSmsConfigService microSmsConfigService;

    public MicroSmsConfigService getMicroSmsConfigService() {
        return microSmsConfigService;
    }

    public void setMicroSmsConfigService(MicroSmsConfigService microSmsConfigService) {
        this.microSmsConfigService = microSmsConfigService;
    }

    public void start() throws Exception {
        List<MicroSmsConfig> microSmsConfigs = microSmsConfigService.listAll();
        assert(microSmsConfigs != null);
        assert(microSmsConfigs.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(microSmsConfigs));
    }
}
