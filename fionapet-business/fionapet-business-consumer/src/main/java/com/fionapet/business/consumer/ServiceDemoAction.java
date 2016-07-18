package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.Service;
import com.fionapet.business.service.ServiceService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-18 11:09:25.
 */
public class ServiceDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(ServiceDemoAction.class);
    private ServiceService serviceService;

    public ServiceService getServiceService() {
        return serviceService;
    }

    public void setServiceService(ServiceService serviceService) {
        this.serviceService = serviceService;
    }

    public void start() throws Exception {
        List<Service> services = serviceService.listAll();
        assert(services != null);
        assert(services.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(services));
    }
}
