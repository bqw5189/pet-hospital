package com.fionapet.business.service;

import com.fionapet.business.entity.ItemCate;
import com.fionapet.business.repository.DaoBase;
import com.fionapet.business.repository.ItemCateDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
* 商品服务种类实现类
 * @author bailj
 */
public class ItemCateServiceImpl extends CURDServiceBase<ItemCate> implements ItemCateService {
    @Autowired
    private ItemCateDao itemCateDao;

    @Override
    public DaoBase<ItemCate> getDao() {
        return itemCateDao;
    }
}
