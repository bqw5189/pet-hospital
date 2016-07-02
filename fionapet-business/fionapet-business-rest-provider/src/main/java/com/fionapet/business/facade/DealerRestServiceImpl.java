package com.fionapet.business.facade;

import com.fionapet.business.entity.Dealer;
import com.fionapet.business.service.CURDService;
import com.fionapet.business.service.DealerService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 经销商
 * User: baiqw
 * Date: 14-12-9
 * Time: 下午3:45
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
