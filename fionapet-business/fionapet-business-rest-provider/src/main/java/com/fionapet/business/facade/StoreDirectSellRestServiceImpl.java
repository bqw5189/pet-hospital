package com.fionapet.business.facade;

import com.fionapet.business.entity.StoreDirectSell;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.StoreDirectSellService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 仓库直销主表
* Created by tom on 2016-07-18 11:56:09.
 */
public class StoreDirectSellRestServiceImpl extends RestServiceBase<StoreDirectSell> implements StoreDirectSellRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(StoreDirectSellRestServiceImpl.class);

    private StoreDirectSellService storeDirectSellService;

    public StoreDirectSellService getStoreDirectSellService() {
        return storeDirectSellService;
    }

    public void setStoreDirectSellService(StoreDirectSellService storeDirectSellService) {
        this.storeDirectSellService = storeDirectSellService;
    }

    @Override
    public CURDService<StoreDirectSell> getService() {
        return storeDirectSellService;
    }

}
