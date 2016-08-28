package com.fionapet.business.service;

import com.fionapet.business.entity.Warehouse;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.WarehouseDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  仓库信息表
* Created by tom on 2016-08-27 10:45:14.
 */
public class WarehouseServiceImpl extends CURDServiceBase<Warehouse> implements WarehouseService {
    @Autowired
    private WarehouseDao warehouseDao;

    @Override
    public DaoBase<Warehouse> getDao() {
        return warehouseDao;
    }
}
