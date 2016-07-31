package com.fionapet.business.facade;

import com.fionapet.business.entity.ItemDiscountRate;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.ItemDiscountRateService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 业务类型打折率
* Created by tom on 2016-07-31 16:42:51.
 */
public class ItemDiscountRateRestServiceImpl extends RestServiceBase<ItemDiscountRate> implements ItemDiscountRateRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(ItemDiscountRateRestServiceImpl.class);

    private ItemDiscountRateService itemDiscountRateService;

    public ItemDiscountRateService getItemDiscountRateService() {
        return itemDiscountRateService;
    }

    public void setItemDiscountRateService(ItemDiscountRateService itemDiscountRateService) {
        this.itemDiscountRateService = itemDiscountRateService;
    }

    @Override
    public CURDService<ItemDiscountRate> getService() {
        return itemDiscountRateService;
    }

}
