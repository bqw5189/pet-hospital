package com.fionapet.business.service;

import com.fionapet.business.entity.WarehouseInrecord;
import org.dubbo.x.service.CURDService;
/**
 * 进库记录
* Created by tom on 2016-07-18 11:56:10.
 */
public interface WarehouseInrecordService extends CURDService<WarehouseInrecord> {

    /**
     * 审计入库
     * @param uuid
     * @return
     */
    Boolean audit(String uuid);
}
