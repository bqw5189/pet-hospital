package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.WarehouseOutrecordDetail;
import com.fionapet.business.service.WarehouseOutrecordDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-18 11:09:24.
 */
public class WarehouseOutrecordDetailDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(WarehouseOutrecordDetailDemoAction.class);
    private WarehouseOutrecordDetailService warehouseOutrecordDetailService;

    public WarehouseOutrecordDetailService getWarehouseOutrecordDetailService() {
        return warehouseOutrecordDetailService;
    }

    public void setWarehouseOutrecordDetailService(WarehouseOutrecordDetailService warehouseOutrecordDetailService) {
        this.warehouseOutrecordDetailService = warehouseOutrecordDetailService;
    }

    public void start() throws Exception {
        List<WarehouseOutrecordDetail> warehouseOutrecordDetails = warehouseOutrecordDetailService.listAll();
        assert(warehouseOutrecordDetails != null);
        assert(warehouseOutrecordDetails.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(warehouseOutrecordDetails));
    }
}
