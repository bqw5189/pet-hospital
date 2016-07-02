package com.fionapet.business.service;

import com.fionapet.business.entity.Warehouse;
import com.fionapet.business.repository.DaoBase;
import com.fionapet.business.repository.WarehouseDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * 仓库信息实现类
 * @author bailj
 */
public class WarehouseServiceImpl extends CURDServiceBase<Warehouse> implements WarehouseService {
    @Autowired
    private WarehouseDao WarehouseDao;

    @Override
    public DaoBase<Warehouse> getDao() {
        return WarehouseDao;
    }
}
