package com.fionapet.business.facade;

import com.fionapet.business.entity.WarehouseInrecord;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.WarehouseInrecordService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 进库记录
* Created by tom on 2016-07-18 11:56:10.
 */
public class WarehouseInrecordRestServiceImpl extends RestServiceBase<WarehouseInrecord> implements WarehouseInrecordRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(WarehouseInrecordRestServiceImpl.class);

    private WarehouseInrecordService warehouseInrecordService;

    public WarehouseInrecordService getWarehouseInrecordService() {
        return warehouseInrecordService;
    }

    public void setWarehouseInrecordService(WarehouseInrecordService warehouseInrecordService) {
        this.warehouseInrecordService = warehouseInrecordService;
    }

    @Override
    public CURDService<WarehouseInrecord> getService() {
        return warehouseInrecordService;
    }

}
