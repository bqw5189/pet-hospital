package com.fionapet.business.service;

import com.fionapet.business.entity.ItemCount;
import com.fionapet.business.entity.WarehouseInrecord;
import org.dubbo.x.service.CURDService;
/**
 * 种类数量更改原因表
* Created by tom on 2016-07-25 09:32:32.
 */
public interface ItemCountService extends CURDService<ItemCount> {
    void update(String warehouseInrecordId);
}
