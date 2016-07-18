package com.fionapet.business.service;

import com.fionapet.business.entity.WarehouseInventory;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.WarehouseInventoryDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  仓库存货清单
* Created by tom on 2016-07-18 11:56:08.
 */
public class WarehouseInventoryServiceImpl extends CURDServiceBase<WarehouseInventory> implements WarehouseInventoryService {
    @Autowired
    private WarehouseInventoryDao warehouseInventoryDao;

    @Override
    public DaoBase<WarehouseInventory> getDao() {
        return warehouseInventoryDao;
    }
}
