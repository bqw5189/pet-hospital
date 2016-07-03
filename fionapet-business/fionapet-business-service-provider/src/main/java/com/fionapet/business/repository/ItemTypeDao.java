package com.fionapet.business.repository;

import com.fionapet.business.entity.BusinesCate;
import com.fionapet.business.entity.ItemType;

/**
 * 商品和服务类型
 * @author baiqw
 **/
public interface ItemTypeDao extends DaoBase<ItemType> {
    /**
     * @param itemName
     * @return
     */
    ItemType findByItemName(String itemName);
}
