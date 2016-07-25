package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.ItemSingleDetail;
import com.fionapet.business.service.ItemSingleDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-25 09:32:32.
 */
public class ItemSingleDetailDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(ItemSingleDetailDemoAction.class);
    private ItemSingleDetailService itemSingleDetailService;

    public ItemSingleDetailService getItemSingleDetailService() {
        return itemSingleDetailService;
    }

    public void setItemSingleDetailService(ItemSingleDetailService itemSingleDetailService) {
        this.itemSingleDetailService = itemSingleDetailService;
    }

    public void start() throws Exception {
        List<ItemSingleDetail> itemSingleDetails = itemSingleDetailService.listAll();
        assert(itemSingleDetails != null);
        assert(itemSingleDetails.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(itemSingleDetails));
    }
}
