package com.fionapet.business.repository;

import com.fionapet.business.entity.ItemCount;
import org.dubbo.x.repository.DaoBase;

/**
 * 种类数量更改原因表
* Created by tom on 2016-07-25 09:32:32.
 **/
public interface ItemCountDao extends DaoBase<ItemCount> {
    ItemCount findByItemCode(String itemCode);
}
