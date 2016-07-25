package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.CheckWarehouseDetail;
import com.fionapet.business.service.CheckWarehouseDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-25 09:32:33.
 */
public class CheckWarehouseDetailDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(CheckWarehouseDetailDemoAction.class);
    private CheckWarehouseDetailService checkWarehouseDetailService;

    public CheckWarehouseDetailService getCheckWarehouseDetailService() {
        return checkWarehouseDetailService;
    }

    public void setCheckWarehouseDetailService(CheckWarehouseDetailService checkWarehouseDetailService) {
        this.checkWarehouseDetailService = checkWarehouseDetailService;
    }

    public void start() throws Exception {
        List<CheckWarehouseDetail> checkWarehouseDetails = checkWarehouseDetailService.listAll();
        assert(checkWarehouseDetails != null);
        assert(checkWarehouseDetails.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(checkWarehouseDetails));
    }
}
