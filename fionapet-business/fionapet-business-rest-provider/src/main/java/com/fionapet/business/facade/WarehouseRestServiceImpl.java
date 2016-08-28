package com.fionapet.business.facade;

import com.fionapet.business.entity.Warehouse;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.WarehouseService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 仓库信息表
* Created by tom on 2016-08-27 10:45:14.
 */
public class WarehouseRestServiceImpl extends RestServiceBase<Warehouse> implements WarehouseRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(WarehouseRestServiceImpl.class);

    private WarehouseService warehouseService;

    public WarehouseService getWarehouseService() {
        return warehouseService;
    }

    public void setWarehouseService(WarehouseService warehouseService) {
        this.warehouseService = warehouseService;
    }

    @Override
    public CURDService<Warehouse> getService() {
        return warehouseService;
    }

}
