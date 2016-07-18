package com.fionapet.business.service;

import com.fionapet.business.entity.WarehouseOutrecordDetail;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.WarehouseOutrecordDetailDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  出库记录明细
* Created by tom on 2016-07-18 11:56:11.
 */
public class WarehouseOutrecordDetailServiceImpl extends CURDServiceBase<WarehouseOutrecordDetail> implements WarehouseOutrecordDetailService {
    @Autowired
    private WarehouseOutrecordDetailDao warehouseOutrecordDetailDao;

    @Override
    public DaoBase<WarehouseOutrecordDetail> getDao() {
        return warehouseOutrecordDetailDao;
    }
}
