package com.fionapet.business.repository;

import com.fionapet.business.entity.WarehouseInrecord;
import org.dubbo.x.repository.DaoBase;

/**
 * 进库记录
* Created by tom on 2016-07-18 11:56:10.
 **/
public interface WarehouseInrecordDao extends DaoBase<WarehouseInrecord> {
    WarehouseInrecord findByInWarehouseCode(String inWarehouseCode);
}
