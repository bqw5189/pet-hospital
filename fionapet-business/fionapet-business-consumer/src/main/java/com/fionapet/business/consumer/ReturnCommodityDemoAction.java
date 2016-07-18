package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.ReturnCommodity;
import com.fionapet.business.service.ReturnCommodityService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-18 11:09:23.
 */
public class ReturnCommodityDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(ReturnCommodityDemoAction.class);
    private ReturnCommodityService returnCommodityService;

    public ReturnCommodityService getReturnCommodityService() {
        return returnCommodityService;
    }

    public void setReturnCommodityService(ReturnCommodityService returnCommodityService) {
        this.returnCommodityService = returnCommodityService;
    }

    public void start() throws Exception {
        List<ReturnCommodity> returnCommoditys = returnCommodityService.listAll();
        assert(returnCommoditys != null);
        assert(returnCommoditys.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(returnCommoditys));
    }
}
