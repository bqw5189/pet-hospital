package com.fionapet.business.facade;

import com.fionapet.business.entity.Dealer;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.DealerService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 代理商
* Created by tom on 2016-07-31 16:42:51.
 */
public class DealerRestServiceImpl extends RestServiceBase<Dealer> implements DealerRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(DealerRestServiceImpl.class);

    private DealerService dealerService;

    public DealerService getDealerService() {
        return dealerService;
    }

    public void setDealerService(DealerService dealerService) {
        this.dealerService = dealerService;
    }

    @Override
    public CURDService<Dealer> getService() {
        return dealerService;
    }

}
