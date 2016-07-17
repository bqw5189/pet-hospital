package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.AppConfig;
import com.fionapet.business.service.AppConfigService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
 * @author baiqw
 */
public class AppConfigDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(AppConfigDemoAction.class);
    private AppConfigService appConfigService;

    public AppConfigService getAppConfigService() {
        return appConfigService;
    }

    public void setAppConfigService(AppConfigService appConfigService) {
        this.appConfigService = appConfigService;
    }

    public void start() throws Exception {
        List<AppConfig> appConfigs = appConfigService.listAll();
        assert(appConfigs != null);
        assert(appConfigs.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(appConfigs));
    }
}
