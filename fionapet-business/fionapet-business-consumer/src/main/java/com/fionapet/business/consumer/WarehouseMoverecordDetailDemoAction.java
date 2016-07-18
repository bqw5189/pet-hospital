package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.WarehouseMoverecordDetail;
import com.fionapet.business.service.WarehouseMoverecordDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-18 11:09:25.
 */
public class WarehouseMoverecordDetailDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(WarehouseMoverecordDetailDemoAction.class);
    private WarehouseMoverecordDetailService warehouseMoverecordDetailService;

    public WarehouseMoverecordDetailService getWarehouseMoverecordDetailService() {
        return warehouseMoverecordDetailService;
    }

    public void setWarehouseMoverecordDetailService(WarehouseMoverecordDetailService warehouseMoverecordDetailService) {
        this.warehouseMoverecordDetailService = warehouseMoverecordDetailService;
    }

    public void start() throws Exception {
        List<WarehouseMoverecordDetail> warehouseMoverecordDetails = warehouseMoverecordDetailService.listAll();
        assert(warehouseMoverecordDetails != null);
        assert(warehouseMoverecordDetails.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(warehouseMoverecordDetails));
    }
}
