package com.fionapet.business.facade;

import com.fionapet.business.entity.ItemtypeSupplies;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.ItemtypeSuppliesService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 供应量表
* Created by tom on 2016-07-25 09:32:33.
 */
public class ItemtypeSuppliesRestServiceImpl extends RestServiceBase<ItemtypeSupplies> implements ItemtypeSuppliesRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(ItemtypeSuppliesRestServiceImpl.class);

    private ItemtypeSuppliesService itemtypeSuppliesService;

    public ItemtypeSuppliesService getItemtypeSuppliesService() {
        return itemtypeSuppliesService;
    }

    public void setItemtypeSuppliesService(ItemtypeSuppliesService itemtypeSuppliesService) {
        this.itemtypeSuppliesService = itemtypeSuppliesService;
    }

    @Override
    public CURDService<ItemtypeSupplies> getService() {
        return itemtypeSuppliesService;
    }

}
