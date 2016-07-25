package com.fionapet.business.service;

import com.fionapet.business.entity.CheckWarehouse;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.CheckWarehouseDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  仓库检查主表
* Created by tom on 2016-07-25 09:32:33.
 */
public class CheckWarehouseServiceImpl extends CURDServiceBase<CheckWarehouse> implements CheckWarehouseService {
    @Autowired
    private CheckWarehouseDao checkWarehouseDao;

    @Override
    public DaoBase<CheckWarehouse> getDao() {
        return checkWarehouseDao;
    }
}
