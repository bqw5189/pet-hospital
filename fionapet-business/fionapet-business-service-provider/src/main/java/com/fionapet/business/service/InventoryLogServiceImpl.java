package com.fionapet.business.service;

import com.fionapet.business.entity.InventoryLog;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.InventoryLogDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  存货清单日志表
* Created by tom on 2016-07-25 09:32:30.
 */
public class InventoryLogServiceImpl extends CURDServiceBase<InventoryLog> implements InventoryLogService {
    @Autowired
    private InventoryLogDao inventoryLogDao;

    @Override
    public DaoBase<InventoryLog> getDao() {
        return inventoryLogDao;
    }
}
