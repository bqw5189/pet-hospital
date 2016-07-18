package com.fionapet.business.facade;

import com.fionapet.business.entity.WarehouseBackrecord;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.WarehouseBackrecordService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 退回记录
* Created by tom on 2016-07-18 11:56:09.
 */
public class WarehouseBackrecordRestServiceImpl extends RestServiceBase<WarehouseBackrecord> implements WarehouseBackrecordRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(WarehouseBackrecordRestServiceImpl.class);

    private WarehouseBackrecordService warehouseBackrecordService;

    public WarehouseBackrecordService getWarehouseBackrecordService() {
        return warehouseBackrecordService;
    }

    public void setWarehouseBackrecordService(WarehouseBackrecordService warehouseBackrecordService) {
        this.warehouseBackrecordService = warehouseBackrecordService;
    }

    @Override
    public CURDService<WarehouseBackrecord> getService() {
        return warehouseBackrecordService;
    }

}
