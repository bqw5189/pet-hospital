package com.fionapet.business.service;

import com.fionapet.business.entity.WarehouseMoverecordDetail;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.WarehouseMoverecordDetailDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  移库记录明细
* Created by tom on 2016-07-18 11:56:11.
 */
public class WarehouseMoverecordDetailServiceImpl extends CURDServiceBase<WarehouseMoverecordDetail> implements WarehouseMoverecordDetailService {
    @Autowired
    private WarehouseMoverecordDetailDao warehouseMoverecordDetailDao;

    @Override
    public DaoBase<WarehouseMoverecordDetail> getDao() {
        return warehouseMoverecordDetailDao;
    }
}
