package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.ItemDiscountRate;
import com.fionapet.business.service.ItemDiscountRateService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-31 16:42:51.
 */
public class ItemDiscountRateDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(ItemDiscountRateDemoAction.class);
    private ItemDiscountRateService itemDiscountRateService;

    public ItemDiscountRateService getItemDiscountRateService() {
        return itemDiscountRateService;
    }

    public void setItemDiscountRateService(ItemDiscountRateService itemDiscountRateService) {
        this.itemDiscountRateService = itemDiscountRateService;
    }

    public void start() throws Exception {
        List<ItemDiscountRate> itemDiscountRates = itemDiscountRateService.listAll();
        assert(itemDiscountRates != null);
        assert(itemDiscountRates.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(itemDiscountRates));
    }
}
