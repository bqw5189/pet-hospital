package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.StoreDirectSell;
import com.fionapet.business.service.StoreDirectSellService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-18 11:00:46.
 */
public class StoreDirectSellDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(StoreDirectSellDemoAction.class);
    private StoreDirectSellService storeDirectSellService;

    public StoreDirectSellService getStoreDirectSellService() {
        return storeDirectSellService;
    }

    public void setStoreDirectSellService(StoreDirectSellService storeDirectSellService) {
        this.storeDirectSellService = storeDirectSellService;
    }

    public void start() throws Exception {
        List<StoreDirectSell> storeDirectSells = storeDirectSellService.listAll();
        assert(storeDirectSells != null);
        assert(storeDirectSells.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(storeDirectSells));
    }
}
