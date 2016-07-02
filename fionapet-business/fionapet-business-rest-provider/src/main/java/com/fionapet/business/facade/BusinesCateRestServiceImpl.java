package com.fionapet.business.facade;

import com.fionapet.business.entity.BusinesCate;
import com.fionapet.business.service.CURDService;
import com.fionapet.business.service.BusinesCateService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * User: bailj
 * Date: 14-12-9
 * Time: 下午3:45
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
