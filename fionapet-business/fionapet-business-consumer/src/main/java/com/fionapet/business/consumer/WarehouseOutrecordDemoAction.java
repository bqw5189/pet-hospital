package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.WarehouseOutrecord;
import com.fionapet.business.service.WarehouseOutrecordService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-18 11:09:24.
 */
public class WarehouseOutrecordDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(WarehouseOutrecordDemoAction.class);
    private WarehouseOutrecordService warehouseOutrecordService;

    public WarehouseOutrecordService getWarehouseOutrecordService() {
        return warehouseOutrecordService;
    }

    public void setWarehouseOutrecordService(WarehouseOutrecordService warehouseOutrecordService) {
        this.warehouseOutrecordService = warehouseOutrecordService;
    }

    public void start() throws Exception {
        List<WarehouseOutrecord> warehouseOutrecords = warehouseOutrecordService.listAll();
        assert(warehouseOutrecords != null);
        assert(warehouseOutrecords.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(warehouseOutrecords));
    }
}
