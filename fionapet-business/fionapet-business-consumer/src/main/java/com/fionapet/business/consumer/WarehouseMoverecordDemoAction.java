package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.WarehouseMoverecord;
import com.fionapet.business.service.WarehouseMoverecordService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-18 11:00:45.
 */
public class WarehouseMoverecordDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(WarehouseMoverecordDemoAction.class);
    private WarehouseMoverecordService warehouseMoverecordService;

    public WarehouseMoverecordService getWarehouseMoverecordService() {
        return warehouseMoverecordService;
    }

    public void setWarehouseMoverecordService(WarehouseMoverecordService warehouseMoverecordService) {
        this.warehouseMoverecordService = warehouseMoverecordService;
    }

    public void start() throws Exception {
        List<WarehouseMoverecord> warehouseMoverecords = warehouseMoverecordService.listAll();
        assert(warehouseMoverecords != null);
        assert(warehouseMoverecords.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(warehouseMoverecords));
    }
}
