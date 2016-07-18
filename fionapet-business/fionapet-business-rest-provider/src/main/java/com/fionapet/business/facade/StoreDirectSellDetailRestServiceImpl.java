package com.fionapet.business.facade;

import com.fionapet.business.entity.StoreDirectSellDetail;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.StoreDirectSellDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 仓库直销明细
* Created by tom on 2016-07-18 11:56:11.
 */
public class StoreDirectSellDetailRestServiceImpl extends RestServiceBase<StoreDirectSellDetail> implements StoreDirectSellDetailRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(StoreDirectSellDetailRestServiceImpl.class);

    private StoreDirectSellDetailService storeDirectSellDetailService;

    public StoreDirectSellDetailService getStoreDirectSellDetailService() {
        return storeDirectSellDetailService;
    }

    public void setStoreDirectSellDetailService(StoreDirectSellDetailService storeDirectSellDetailService) {
        this.storeDirectSellDetailService = storeDirectSellDetailService;
    }

    @Override
    public CURDService<StoreDirectSellDetail> getService() {
        return storeDirectSellDetailService;
    }

}
