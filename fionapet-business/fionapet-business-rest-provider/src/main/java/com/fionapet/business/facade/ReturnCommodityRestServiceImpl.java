package com.fionapet.business.facade;

import com.fionapet.business.entity.ReturnCommodity;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.ReturnCommodityService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 返回商品主表
* Created by tom on 2016-07-18 11:56:09.
 */
public class ReturnCommodityRestServiceImpl extends RestServiceBase<ReturnCommodity> implements ReturnCommodityRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(ReturnCommodityRestServiceImpl.class);

    private ReturnCommodityService returnCommodityService;

    public ReturnCommodityService getReturnCommodityService() {
        return returnCommodityService;
    }

    public void setReturnCommodityService(ReturnCommodityService returnCommodityService) {
        this.returnCommodityService = returnCommodityService;
    }

    @Override
    public CURDService<ReturnCommodity> getService() {
        return returnCommodityService;
    }

}
