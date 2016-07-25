package com.fionapet.business.facade;

import com.fionapet.business.entity.InventoryLog;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.InventoryLogService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 存货清单日志表
* Created by tom on 2016-07-25 09:32:30.
 */
public class InventoryLogRestServiceImpl extends RestServiceBase<InventoryLog> implements InventoryLogRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(InventoryLogRestServiceImpl.class);

    private InventoryLogService inventoryLogService;

    public InventoryLogService getInventoryLogService() {
        return inventoryLogService;
    }

    public void setInventoryLogService(InventoryLogService inventoryLogService) {
        this.inventoryLogService = inventoryLogService;
    }

    @Override
    public CURDService<InventoryLog> getService() {
        return inventoryLogService;
    }

}
