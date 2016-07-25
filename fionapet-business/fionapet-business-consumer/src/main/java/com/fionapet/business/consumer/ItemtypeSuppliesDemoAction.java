package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.ItemtypeSupplies;
import com.fionapet.business.service.ItemtypeSuppliesService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-25 09:32:33.
 */
public class ItemtypeSuppliesDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(ItemtypeSuppliesDemoAction.class);
    private ItemtypeSuppliesService itemtypeSuppliesService;

    public ItemtypeSuppliesService getItemtypeSuppliesService() {
        return itemtypeSuppliesService;
    }

    public void setItemtypeSuppliesService(ItemtypeSuppliesService itemtypeSuppliesService) {
        this.itemtypeSuppliesService = itemtypeSuppliesService;
    }

    public void start() throws Exception {
        List<ItemtypeSupplies> itemtypeSuppliess = itemtypeSuppliesService.listAll();
        assert(itemtypeSuppliess != null);
        assert(itemtypeSuppliess.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(itemtypeSuppliess));
    }
}
