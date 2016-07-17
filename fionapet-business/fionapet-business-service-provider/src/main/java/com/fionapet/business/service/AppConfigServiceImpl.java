package com.fionapet.business.service;

import com.fionapet.business.entity.AppConfig;
import com.fionapet.business.repository.DaoBase;
import com.fionapet.business.repository.AppConfigDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  提醒配置表
 * @author baiqw
 */
public class AppConfigServiceImpl extends CURDServiceBase<AppConfig> implements AppConfigService {
    @Autowired
    private AppConfigDao appConfigDao;

    @Override
    public DaoBase<AppConfig> getDao() {
        return appConfigDao;
    }
}
