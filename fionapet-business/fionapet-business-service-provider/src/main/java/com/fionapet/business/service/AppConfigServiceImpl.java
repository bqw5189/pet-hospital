package com.fionapet.business.service;

import com.fionapet.business.entity.AppConfig;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.AppConfigDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  应用配置
* Created by tom on 2016-07-18 11:56:10.
 */
public class AppConfigServiceImpl extends CURDServiceBase<AppConfig> implements AppConfigService {
    @Autowired
    private AppConfigDao appConfigDao;

    @Override
    public DaoBase<AppConfig> getDao() {
        return appConfigDao;
    }
}
