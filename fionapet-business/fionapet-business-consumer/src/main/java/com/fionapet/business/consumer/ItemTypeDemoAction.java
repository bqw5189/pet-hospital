package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.ItemType;
import com.fionapet.business.service.ItemTypeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-31 16:36:26.
 */
public class ItemTypeDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(ItemTypeDemoAction.class);
    private ItemTypeService itemTypeService;

    public ItemTypeService getItemTypeService() {
        return itemTypeService;
    }

    public void setItemTypeService(ItemTypeService itemTypeService) {
        this.itemTypeService = itemTypeService;
    }

    public void start() throws Exception {
        List<ItemType> itemTypes = itemTypeService.listAll();
        assert(itemTypes != null);
        assert(itemTypes.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(itemTypes));
    }
}
