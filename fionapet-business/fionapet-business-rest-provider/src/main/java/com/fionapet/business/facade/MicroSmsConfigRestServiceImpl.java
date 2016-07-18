package com.fionapet.business.facade;

import com.fionapet.business.entity.MicroSmsConfig;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.MicroSmsConfigService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 消息提醒配置表
* Created by tom on 2016-07-18 11:56:10.
 */
public class MicroSmsConfigRestServiceImpl extends RestServiceBase<MicroSmsConfig> implements MicroSmsConfigRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(MicroSmsConfigRestServiceImpl.class);

    private MicroSmsConfigService microSmsConfigService;

    public MicroSmsConfigService getMicroSmsConfigService() {
        return microSmsConfigService;
    }

    public void setMicroSmsConfigService(MicroSmsConfigService microSmsConfigService) {
        this.microSmsConfigService = microSmsConfigService;
    }

    @Override
    public CURDService<MicroSmsConfig> getService() {
        return microSmsConfigService;
    }

}
