package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.WarehouseInrecordDetail;
import com.fionapet.business.service.WarehouseInrecordDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-18 11:09:23.
 */
public class WarehouseInrecordDetailDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(WarehouseInrecordDetailDemoAction.class);
    private WarehouseInrecordDetailService warehouseInrecordDetailService;

    public WarehouseInrecordDetailService getWarehouseInrecordDetailService() {
        return warehouseInrecordDetailService;
    }

    public void setWarehouseInrecordDetailService(WarehouseInrecordDetailService warehouseInrecordDetailService) {
        this.warehouseInrecordDetailService = warehouseInrecordDetailService;
    }

    public void start() throws Exception {
        List<WarehouseInrecordDetail> warehouseInrecordDetails = warehouseInrecordDetailService.listAll();
        assert(warehouseInrecordDetails != null);
        assert(warehouseInrecordDetails.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(warehouseInrecordDetails));
    }
}
