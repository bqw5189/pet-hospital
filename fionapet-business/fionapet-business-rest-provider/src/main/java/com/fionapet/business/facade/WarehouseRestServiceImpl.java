package com.fionapet.business.facade;

import com.fionapet.business.entity.Warehouse;
import com.fionapet.business.service.CURDService;
import com.fionapet.business.service.WarehouseService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * User: bailj
 * Date: 14-12-9
 * Time: 下午3:45
 */
public class WarehouseRestServiceImpl extends RestServiceBase<Warehouse> implements WarehouseRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(WarehouseRestServiceImpl.class);

    private WarehouseService WarehouseService;

    public WarehouseService getWarehouseService() {
        return WarehouseService;
    }

    public void setWarehouseService(WarehouseService WarehouseService) {
        this.WarehouseService = WarehouseService;
    }

    @Override
    public CURDService<Warehouse> getService() {
        return WarehouseService;
    }

}
