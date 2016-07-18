package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.ServiceDetail;
import com.fionapet.business.service.ServiceDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-18 11:09:24.
 */
public class ServiceDetailDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(ServiceDetailDemoAction.class);
    private ServiceDetailService serviceDetailService;

    public ServiceDetailService getServiceDetailService() {
        return serviceDetailService;
    }

    public void setServiceDetailService(ServiceDetailService serviceDetailService) {
        this.serviceDetailService = serviceDetailService;
    }

    public void start() throws Exception {
        List<ServiceDetail> serviceDetails = serviceDetailService.listAll();
        assert(serviceDetails != null);
        assert(serviceDetails.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(serviceDetails));
    }
}
