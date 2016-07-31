package com.fionapet.business.facade;

import com.fionapet.business.entity.ItemType;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.ItemTypeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 商品类型
* Created by tom on 2016-07-31 16:36:26.
 */
public class ItemTypeRestServiceImpl extends RestServiceBase<ItemType> implements ItemTypeRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(ItemTypeRestServiceImpl.class);

    private ItemTypeService itemTypeService;

    public ItemTypeService getItemTypeService() {
        return itemTypeService;
    }

    public void setItemTypeService(ItemTypeService itemTypeService) {
        this.itemTypeService = itemTypeService;
    }

    @Override
    public CURDService<ItemType> getService() {
        return itemTypeService;
    }

}
