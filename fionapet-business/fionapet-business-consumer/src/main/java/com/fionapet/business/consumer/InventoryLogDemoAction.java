package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.InventoryLog;
import com.fionapet.business.service.InventoryLogService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-25 09:32:30.
 */
public class InventoryLogDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(InventoryLogDemoAction.class);
    private InventoryLogService inventoryLogService;

    public InventoryLogService getInventoryLogService() {
        return inventoryLogService;
    }

    public void setInventoryLogService(InventoryLogService inventoryLogService) {
        this.inventoryLogService = inventoryLogService;
    }

    public void start() throws Exception {
        List<InventoryLog> inventoryLogs = inventoryLogService.listAll();
        assert(inventoryLogs != null);
        assert(inventoryLogs.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(inventoryLogs));
    }
}
