package com.fionapet.business.service;

import com.fionapet.business.entity.WarehouseOutrecord;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.WarehouseOutrecordDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  出库记录
* Created by tom on 2016-07-18 11:56:10.
 */
public class WarehouseOutrecordServiceImpl extends CURDServiceBase<WarehouseOutrecord> implements WarehouseOutrecordService {
    @Autowired
    private WarehouseOutrecordDao warehouseOutrecordDao;

    @Override
    public DaoBase<WarehouseOutrecord> getDao() {
        return warehouseOutrecordDao;
    }
}
