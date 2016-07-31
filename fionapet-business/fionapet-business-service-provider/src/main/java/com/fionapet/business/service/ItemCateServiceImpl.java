package com.fionapet.business.service;

import com.fionapet.business.entity.ItemCate;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.ItemCateDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  商品服务种类
* Created by tom on 2016-07-31 16:42:52.
 */
public class ItemCateServiceImpl extends CURDServiceBase<ItemCate> implements ItemCateService {
    @Autowired
    private ItemCateDao itemCateDao;

    @Override
    public DaoBase<ItemCate> getDao() {
        return itemCateDao;
    }
}
