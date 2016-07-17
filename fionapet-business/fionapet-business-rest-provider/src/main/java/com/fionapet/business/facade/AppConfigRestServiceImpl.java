package com.fionapet.business.facade;

import com.fionapet.business.entity.AppConfig;
import com.fionapet.business.service.CURDService;
import com.fionapet.business.service.AppConfigService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 提醒配置表
 * User: baiqw
 * Date: 14-12-9
 * Time: 下午3:45
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
