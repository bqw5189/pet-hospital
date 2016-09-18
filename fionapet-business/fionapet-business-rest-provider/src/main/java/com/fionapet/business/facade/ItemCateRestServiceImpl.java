package com.fionapet.business.facade;

import com.fionapet.business.entity.ItemCate;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.ItemCateService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 商品服务种类
* Created by tom on 2016-07-31 16:42:52.
 */
public class ItemCateRestServiceImpl extends SelectRestServiceBase<ItemCate> implements ItemCateRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(ItemCateRestServiceImpl.class);

    private ItemCateService itemCateService;

    public ItemCateService getItemCateService() {
        return itemCateService;
    }

    public void setItemCateService(ItemCateService itemCateService) {
        this.itemCateService = itemCateService;
    }

    @Override
    public CURDService<ItemCate> getService() {
        return itemCateService;
    }

}
