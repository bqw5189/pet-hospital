package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.WarehouseInventory;
import com.fionapet.business.service.WarehouseInventoryService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-18 11:00:45.
 */
public class WarehouseInventoryDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(WarehouseInventoryDemoAction.class);
    private WarehouseInventoryService warehouseInventoryService;

    public WarehouseInventoryService getWarehouseInventoryService() {
        return warehouseInventoryService;
    }

    public void setWarehouseInventoryService(WarehouseInventoryService warehouseInventoryService) {
        this.warehouseInventoryService = warehouseInventoryService;
    }

    public void start() throws Exception {
        List<WarehouseInventory> warehouseInventorys = warehouseInventoryService.listAll();
        assert(warehouseInventorys != null);
        assert(warehouseInventorys.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(warehouseInventorys));
    }
}
