package com.fionapet.business.facade;

import com.fionapet.business.entity.ItemCate;
import com.fionapet.business.service.CURDService;
import com.fionapet.business.service.ItemCateService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * User: bailj
 * Date: 14-12-9
 * Time: 下午3:45
 */
public class ItemCateRestServiceImpl extends RestServiceBase<ItemCate> implements ItemCateRestService {

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
