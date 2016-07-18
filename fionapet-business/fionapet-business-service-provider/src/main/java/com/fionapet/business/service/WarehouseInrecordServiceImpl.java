package com.fionapet.business.service;

import com.fionapet.business.entity.WarehouseInrecord;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.WarehouseInrecordDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  进库记录
* Created by tom on 2016-07-18 11:56:10.
 */
public class WarehouseInrecordServiceImpl extends CURDServiceBase<WarehouseInrecord> implements WarehouseInrecordService {
    @Autowired
    private WarehouseInrecordDao warehouseInrecordDao;

    @Override
    public DaoBase<WarehouseInrecord> getDao() {
        return warehouseInrecordDao;
    }
}
