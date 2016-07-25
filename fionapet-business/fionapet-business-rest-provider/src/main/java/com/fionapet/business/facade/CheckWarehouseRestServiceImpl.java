package com.fionapet.business.facade;

import com.fionapet.business.entity.CheckWarehouse;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.CheckWarehouseService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 仓库检查主表
* Created by tom on 2016-07-25 09:32:33.
 */
public class CheckWarehouseRestServiceImpl extends RestServiceBase<CheckWarehouse> implements CheckWarehouseRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(CheckWarehouseRestServiceImpl.class);

    private CheckWarehouseService checkWarehouseService;

    public CheckWarehouseService getCheckWarehouseService() {
        return checkWarehouseService;
    }

    public void setCheckWarehouseService(CheckWarehouseService checkWarehouseService) {
        this.checkWarehouseService = checkWarehouseService;
    }

    @Override
    public CURDService<CheckWarehouse> getService() {
        return checkWarehouseService;
    }

}
