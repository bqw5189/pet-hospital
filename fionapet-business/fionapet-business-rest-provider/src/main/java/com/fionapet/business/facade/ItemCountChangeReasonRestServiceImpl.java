package com.fionapet.business.facade;

import com.fionapet.business.entity.ItemCountChangeReason;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.ItemCountChangeReasonService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 种类数量更改原因表
* Created by tom on 2016-07-25 09:32:30.
 */
public class ItemCountChangeReasonRestServiceImpl extends RestServiceBase<ItemCountChangeReason> implements ItemCountChangeReasonRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(ItemCountChangeReasonRestServiceImpl.class);

    private ItemCountChangeReasonService itemCountChangeReasonService;

    public ItemCountChangeReasonService getItemCountChangeReasonService() {
        return itemCountChangeReasonService;
    }

    public void setItemCountChangeReasonService(ItemCountChangeReasonService itemCountChangeReasonService) {
        this.itemCountChangeReasonService = itemCountChangeReasonService;
    }

    @Override
    public CURDService<ItemCountChangeReason> getService() {
        return itemCountChangeReasonService;
    }

}
