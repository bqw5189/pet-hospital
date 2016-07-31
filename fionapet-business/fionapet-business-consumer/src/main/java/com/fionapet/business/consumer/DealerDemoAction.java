package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.Dealer;
import com.fionapet.business.service.DealerService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-31 16:42:50.
 */
public class DealerDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(DealerDemoAction.class);
    private DealerService dealerService;

    public DealerService getDealerService() {
        return dealerService;
    }

    public void setDealerService(DealerService dealerService) {
        this.dealerService = dealerService;
    }

    public void start() throws Exception {
        List<Dealer> dealers = dealerService.listAll();
        assert(dealers != null);
        assert(dealers.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(dealers));
    }
}
