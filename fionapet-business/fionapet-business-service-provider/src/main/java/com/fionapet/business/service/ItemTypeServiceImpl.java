package com.fionapet.business.service;

import com.fionapet.business.entity.ItemType;
import com.fionapet.business.repository.DaoBase;
import com.fionapet.business.repository.ItemTypeDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  商品和服务类型
 * @author baiqw
 */
public class ItemTypeServiceImpl extends CURDServiceBase<ItemType> implements ItemTypeService {
    @Autowired
    private ItemTypeDao itemTypeDao;

    @Override
    public DaoBase<ItemType> getDao() {
        return itemTypeDao;
    }
}
