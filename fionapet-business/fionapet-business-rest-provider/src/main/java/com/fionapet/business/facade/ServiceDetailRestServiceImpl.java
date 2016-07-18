package com.fionapet.business.facade;

import com.fionapet.business.entity.ServiceDetail;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.ServiceDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 服务明细
* Created by tom on 2016-07-18 11:56:10.
 */
public class ServiceDetailRestServiceImpl extends RestServiceBase<ServiceDetail> implements ServiceDetailRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(ServiceDetailRestServiceImpl.class);

    private ServiceDetailService serviceDetailService;

    public ServiceDetailService getServiceDetailService() {
        return serviceDetailService;
    }

    public void setServiceDetailService(ServiceDetailService serviceDetailService) {
        this.serviceDetailService = serviceDetailService;
    }

    @Override
    public CURDService<ServiceDetail> getService() {
        return serviceDetailService;
    }

}
