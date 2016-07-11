package com.fionapet.business.facade;

import com.fionapet.business.entity.ItemDiscountRate;
import com.fionapet.business.service.CURDService;
import com.fionapet.business.service.ItemDiscountRateService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 业务类型打折率
 * User: baiqw
 * Date: 14-12-9
 * Time: 下午3:45
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
