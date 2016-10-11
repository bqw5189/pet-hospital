package com.fionapet.business.facade;

import com.fionapet.business.entity.AppConfig;
import io.swagger.annotations.ApiParam;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.AppConfigService;
import org.dubbo.x.util.ConstantVariable;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.ws.rs.HeaderParam;

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

    @Override
    public RestResult<String> genNumberByName(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("name") String name) {
        return RestResult.OK(appConfigService.genNumberByName(name));
    }
}
