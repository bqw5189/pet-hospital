package com.fionapet.business.service;

import com.fionapet.business.entity.ServiceDetail;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.ServiceDetailDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  服务明细
* Created by tom on 2016-07-18 11:56:10.
 */
public class ServiceDetailServiceImpl extends CURDServiceBase<ServiceDetail> implements ServiceDetailService {
    @Autowired
    private ServiceDetailDao serviceDetailDao;

    @Override
    public DaoBase<ServiceDetail> getDao() {
        return serviceDetailDao;
    }
}
