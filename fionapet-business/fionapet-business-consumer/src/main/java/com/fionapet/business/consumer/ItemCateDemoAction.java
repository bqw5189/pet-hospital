package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.ItemCate;
import com.fionapet.business.service.ItemCateService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-31 16:42:52.
 */
public class ItemCateDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(ItemCateDemoAction.class);
    private ItemCateService itemCateService;

    public ItemCateService getItemCateService() {
        return itemCateService;
    }

    public void setItemCateService(ItemCateService itemCateService) {
        this.itemCateService = itemCateService;
    }

    public void start() throws Exception {
        List<ItemCate> itemCates = itemCateService.listAll();
        assert(itemCates != null);
        assert(itemCates.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(itemCates));
    }
}
