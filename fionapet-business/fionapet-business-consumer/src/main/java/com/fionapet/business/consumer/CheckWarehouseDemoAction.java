package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.CheckWarehouse;
import com.fionapet.business.service.CheckWarehouseService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-25 09:32:33.
 */
public class CheckWarehouseDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(CheckWarehouseDemoAction.class);
    private CheckWarehouseService checkWarehouseService;

    public CheckWarehouseService getCheckWarehouseService() {
        return checkWarehouseService;
    }

    public void setCheckWarehouseService(CheckWarehouseService checkWarehouseService) {
        this.checkWarehouseService = checkWarehouseService;
    }

    public void start() throws Exception {
        List<CheckWarehouse> checkWarehouses = checkWarehouseService.listAll();
        assert(checkWarehouses != null);
        assert(checkWarehouses.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(checkWarehouses));
    }
}
