package com.fionapet.business.facade;

import com.fionapet.business.entity.ItemCount;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.ItemCountService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 种类数量更改原因表
* Created by tom on 2016-07-25 09:32:32.
 */
public class ItemCountRestServiceImpl extends RestServiceBase<ItemCount> implements ItemCountRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(ItemCountRestServiceImpl.class);

    private ItemCountService itemCountService;

    public ItemCountService getItemCountService() {
        return itemCountService;
    }

    public void setItemCountService(ItemCountService itemCountService) {
        this.itemCountService = itemCountService;
    }

    @Override
    public CURDService<ItemCount> getService() {
        return itemCountService;
    }

}
