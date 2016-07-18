package com.fionapet.business.service;

import com.fionapet.business.entity.Service;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.ServiceDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  服务主表
* Created by tom on 2016-07-18 11:56:11.
 */
public class ServiceServiceImpl extends CURDServiceBase<Service> implements ServiceService {
    @Autowired
    private ServiceDao serviceDao;

    @Override
    public DaoBase<Service> getDao() {
        return serviceDao;
    }
}
