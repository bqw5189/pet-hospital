package com.fionapet.business.facade;

import com.fionapet.business.entity.ItemSingleDetail;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.ItemSingleDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 类型化验实例明细表
* Created by tom on 2016-07-25 09:32:32.
 */
public class ItemSingleDetailRestServiceImpl extends RestServiceBase<ItemSingleDetail> implements ItemSingleDetailRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(ItemSingleDetailRestServiceImpl.class);

    private ItemSingleDetailService itemSingleDetailService;

    public ItemSingleDetailService getItemSingleDetailService() {
        return itemSingleDetailService;
    }

    public void setItemSingleDetailService(ItemSingleDetailService itemSingleDetailService) {
        this.itemSingleDetailService = itemSingleDetailService;
    }

    @Override
    public CURDService<ItemSingleDetail> getService() {
        return itemSingleDetailService;
    }

}
