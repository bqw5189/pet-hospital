package com.fionapet.business.facade;

import com.fionapet.business.entity.WarehouseMoverecord;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.WarehouseMoverecordService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 移库记录
* Created by tom on 2016-07-18 11:56:08.
 */
public class WarehouseMoverecordRestServiceImpl extends RestServiceBase<WarehouseMoverecord> implements WarehouseMoverecordRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(WarehouseMoverecordRestServiceImpl.class);

    private WarehouseMoverecordService warehouseMoverecordService;

    public WarehouseMoverecordService getWarehouseMoverecordService() {
        return warehouseMoverecordService;
    }

    public void setWarehouseMoverecordService(WarehouseMoverecordService warehouseMoverecordService) {
        this.warehouseMoverecordService = warehouseMoverecordService;
    }

    @Override
    public CURDService<WarehouseMoverecord> getService() {
        return warehouseMoverecordService;
    }

}
