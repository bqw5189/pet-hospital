package com.fionapet.business.service;

import com.fionapet.business.entity.MicroSmsConfig;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.MicroSmsConfigDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  消息提醒配置表
* Created by tom on 2016-07-18 11:56:10.
 */
public class MicroSmsConfigServiceImpl extends CURDServiceBase<MicroSmsConfig> implements MicroSmsConfigService {
    @Autowired
    private MicroSmsConfigDao microSmsConfigDao;

    @Override
    public DaoBase<MicroSmsConfig> getDao() {
        return microSmsConfigDao;
    }
}
