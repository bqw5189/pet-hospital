package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.Warehouse;
import com.fionapet.business.service.WarehouseService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-08-27 10:45:14.
 */
public class WarehouseDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(WarehouseDemoAction.class);
    private WarehouseService warehouseService;

    public WarehouseService getWarehouseService() {
        return warehouseService;
    }

    public void setWarehouseService(WarehouseService warehouseService) {
        this.warehouseService = warehouseService;
    }

    public void start() throws Exception {
        List<Warehouse> warehouses = warehouseService.listAll();
        assert(warehouses != null);
        assert(warehouses.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(warehouses));
    }
}
