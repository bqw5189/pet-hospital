package com.fionapet.business.facade;

import com.fionapet.business.entity.BusinesCate;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.BusinesCateService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 业务类型表
* Created by tom on 2016-07-31 16:36:25.
 */
public class BusinesCateRestServiceImpl extends RestServiceBase<BusinesCate> implements BusinesCateRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(BusinesCateRestServiceImpl.class);

    private BusinesCateService businesCateService;

    public BusinesCateService getBusinesCateService() {
        return businesCateService;
    }

    public void setBusinesCateService(BusinesCateService businesCateService) {
        this.businesCateService = businesCateService;
    }

    @Override
    public CURDService<BusinesCate> getService() {
        return businesCateService;
    }

}
