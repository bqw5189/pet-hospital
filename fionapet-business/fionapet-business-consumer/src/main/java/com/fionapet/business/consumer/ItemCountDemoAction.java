package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.ItemCount;
import com.fionapet.business.service.ItemCountService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-25 09:32:32.
 */
public class ItemCountDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(ItemCountDemoAction.class);
    private ItemCountService itemCountService;

    public ItemCountService getItemCountService() {
        return itemCountService;
    }

    public void setItemCountService(ItemCountService itemCountService) {
        this.itemCountService = itemCountService;
    }

    public void start() throws Exception {
        List<ItemCount> itemCounts = itemCountService.listAll();
        assert(itemCounts != null);
        assert(itemCounts.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(itemCounts));
    }
}
