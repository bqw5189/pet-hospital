package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.StoreDirectSellDetail;
import com.fionapet.business.service.StoreDirectSellDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-18 11:09:25.
 */
public class StoreDirectSellDetailDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(StoreDirectSellDetailDemoAction.class);
    private StoreDirectSellDetailService storeDirectSellDetailService;

    public StoreDirectSellDetailService getStoreDirectSellDetailService() {
        return storeDirectSellDetailService;
    }

    public void setStoreDirectSellDetailService(StoreDirectSellDetailService storeDirectSellDetailService) {
        this.storeDirectSellDetailService = storeDirectSellDetailService;
    }

    public void start() throws Exception {
        List<StoreDirectSellDetail> storeDirectSellDetails = storeDirectSellDetailService.listAll();
        assert(storeDirectSellDetails != null);
        assert(storeDirectSellDetails.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(storeDirectSellDetails));
    }
}
