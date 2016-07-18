package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.WarehouseBackrecordDetail;
import com.fionapet.business.service.WarehouseBackrecordDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-18 11:09:23.
 */
public class WarehouseBackrecordDetailDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(WarehouseBackrecordDetailDemoAction.class);
    private WarehouseBackrecordDetailService warehouseBackrecordDetailService;

    public WarehouseBackrecordDetailService getWarehouseBackrecordDetailService() {
        return warehouseBackrecordDetailService;
    }

    public void setWarehouseBackrecordDetailService(WarehouseBackrecordDetailService warehouseBackrecordDetailService) {
        this.warehouseBackrecordDetailService = warehouseBackrecordDetailService;
    }

    public void start() throws Exception {
        List<WarehouseBackrecordDetail> warehouseBackrecordDetails = warehouseBackrecordDetailService.listAll();
        assert(warehouseBackrecordDetails != null);
        assert(warehouseBackrecordDetails.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(warehouseBackrecordDetails));
    }
}
