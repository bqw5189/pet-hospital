package com.fionapet.business.repository;

import com.fionapet.business.entity.WarehouseInrecordDetail;
import org.dubbo.x.repository.DaoBase;

import java.util.List;

/**
 * 进库记录明细
* Created by tom on 2016-07-18 11:56:10.
 **/
public interface WarehouseInrecordDetailDao extends DaoBase<WarehouseInrecordDetail> {
    List<WarehouseInrecordDetail> findByInWarehouseCode(String inWarehouseCode);
}
