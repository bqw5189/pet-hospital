package com.fionapet.business.repository;

import com.fionapet.business.entity.ItemType;
import org.dubbo.x.repository.DaoBase;

import java.util.Collection;
import java.util.List;

/**
 * 商品类型
* Created by tom on 2016-07-31 16:36:26.
 **/
public interface ItemTypeDao extends DaoBase<ItemType> {
    List<ItemType> findByCateNo(String cateNo);

    List<ItemType> findByItemName(String itemName);
}
