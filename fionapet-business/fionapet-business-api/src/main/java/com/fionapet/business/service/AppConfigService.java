package com.fionapet.business.service;

import com.fionapet.business.entity.AppConfig;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.service.CURDService;
/**
 * 应用配置
* Created by tom on 2016-07-18 11:56:10.
 */
public interface AppConfigService extends CURDService<AppConfig> {
    public final static String NUMBER_KEY_BLBH = "病历编号";

    String genNumberByName(String name);
}
