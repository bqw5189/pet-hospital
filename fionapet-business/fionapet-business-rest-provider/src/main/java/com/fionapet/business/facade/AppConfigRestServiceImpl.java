package com.fionapet.business.facade;

import com.fionapet.business.entity.AppConfig;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.AppConfigService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 应用配置
* Created by tom on 2016-07-18 11:56:10.
 */
public class AppConfigRestServiceImpl extends RestServiceBase<AppConfig> implements AppConfigRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(AppConfigRestServiceImpl.class);

    private AppConfigService appConfigService;

    public AppConfigService getAppConfigService() {
        return appConfigService;
    }

    public void setAppConfigService(AppConfigService appConfigService) {
        this.appConfigService = appConfigService;
    }

    @Override
    public CURDService<AppConfig> getService() {
        return appConfigService;
    }

}
