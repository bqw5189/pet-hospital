package com.fionapet.business.service;

import com.fionapet.business.entity.ItemCount;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.ItemCountDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  种类数量更改原因表
* Created by tom on 2016-07-25 09:32:32.
 */
public class ItemCountServiceImpl extends CURDServiceBase<ItemCount> implements ItemCountService {
    @Autowired
    private ItemCountDao itemCountDao;

    @Override
    public DaoBase<ItemCount> getDao() {
        return itemCountDao;
    }
}
