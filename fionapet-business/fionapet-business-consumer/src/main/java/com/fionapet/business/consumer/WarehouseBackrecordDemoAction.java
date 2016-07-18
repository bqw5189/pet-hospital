package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.WarehouseBackrecord;
import com.fionapet.business.service.WarehouseBackrecordService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-18 11:00:46.
 */
public class WarehouseBackrecordDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(WarehouseBackrecordDemoAction.class);
    private WarehouseBackrecordService warehouseBackrecordService;

    public WarehouseBackrecordService getWarehouseBackrecordService() {
        return warehouseBackrecordService;
    }

    public void setWarehouseBackrecordService(WarehouseBackrecordService warehouseBackrecordService) {
        this.warehouseBackrecordService = warehouseBackrecordService;
    }

    public void start() throws Exception {
        List<WarehouseBackrecord> warehouseBackrecords = warehouseBackrecordService.listAll();
        assert(warehouseBackrecords != null);
        assert(warehouseBackrecords.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(warehouseBackrecords));
    }
}
