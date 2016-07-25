package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.ItemCountChangeReason;
import com.fionapet.business.service.ItemCountChangeReasonService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-25 09:32:30.
 */
public class ItemCountChangeReasonDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(ItemCountChangeReasonDemoAction.class);
    private ItemCountChangeReasonService itemCountChangeReasonService;

    public ItemCountChangeReasonService getItemCountChangeReasonService() {
        return itemCountChangeReasonService;
    }

    public void setItemCountChangeReasonService(ItemCountChangeReasonService itemCountChangeReasonService) {
        this.itemCountChangeReasonService = itemCountChangeReasonService;
    }

    public void start() throws Exception {
        List<ItemCountChangeReason> itemCountChangeReasons = itemCountChangeReasonService.listAll();
        assert(itemCountChangeReasons != null);
        assert(itemCountChangeReasons.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(itemCountChangeReasons));
    }
}
