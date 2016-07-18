package com.fionapet.business.service;

import com.fionapet.business.entity.WarehouseInrecordDetail;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.WarehouseInrecordDetailDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  进库记录明细
* Created by tom on 2016-07-18 11:56:10.
 */
public class WarehouseInrecordDetailServiceImpl extends CURDServiceBase<WarehouseInrecordDetail> implements WarehouseInrecordDetailService {
    @Autowired
    private WarehouseInrecordDetailDao warehouseInrecordDetailDao;

    @Override
    public DaoBase<WarehouseInrecordDetail> getDao() {
        return warehouseInrecordDetailDao;
    }
}
