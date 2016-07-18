package com.fionapet.business.service;

import com.fionapet.business.entity.WarehouseMoverecord;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.WarehouseMoverecordDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  移库记录
* Created by tom on 2016-07-18 11:56:08.
 */
public class WarehouseMoverecordServiceImpl extends CURDServiceBase<WarehouseMoverecord> implements WarehouseMoverecordService {
    @Autowired
    private WarehouseMoverecordDao warehouseMoverecordDao;

    @Override
    public DaoBase<WarehouseMoverecord> getDao() {
        return warehouseMoverecordDao;
    }
}
