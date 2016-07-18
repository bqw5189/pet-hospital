package com.fionapet.business.facade;

import com.fionapet.business.entity.Service;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.ServiceService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 服务主表
* Created by tom on 2016-07-18 11:56:11.
 */
public class ServiceRestServiceImpl extends RestServiceBase<Service> implements ServiceRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(ServiceRestServiceImpl.class);

    private ServiceService serviceService;

    public ServiceService getServiceService() {
        return serviceService;
    }

    public void setServiceService(ServiceService serviceService) {
        this.serviceService = serviceService;
    }

    @Override
    public CURDService<Service> getService() {
        return serviceService;
    }

}
