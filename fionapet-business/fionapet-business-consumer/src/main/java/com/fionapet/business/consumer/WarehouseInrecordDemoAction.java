package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.WarehouseInrecord;
import com.fionapet.business.service.WarehouseInrecordService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-18 11:09:23.
 */
public class WarehouseInrecordDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(WarehouseInrecordDemoAction.class);
    private WarehouseInrecordService warehouseInrecordService;

    public WarehouseInrecordService getWarehouseInrecordService() {
        return warehouseInrecordService;
    }

    public void setWarehouseInrecordService(WarehouseInrecordService warehouseInrecordService) {
        this.warehouseInrecordService = warehouseInrecordService;
    }

    public void start() throws Exception {
        List<WarehouseInrecord> warehouseInrecords = warehouseInrecordService.listAll();
        assert(warehouseInrecords != null);
        assert(warehouseInrecords.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(warehouseInrecords));
    }
}
