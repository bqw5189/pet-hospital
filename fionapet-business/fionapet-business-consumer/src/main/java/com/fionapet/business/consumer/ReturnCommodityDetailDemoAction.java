package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.ReturnCommodityDetail;
import com.fionapet.business.service.ReturnCommodityDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-18 11:09:25.
 */
public class ReturnCommodityDetailDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(ReturnCommodityDetailDemoAction.class);
    private ReturnCommodityDetailService returnCommodityDetailService;

    public ReturnCommodityDetailService getReturnCommodityDetailService() {
        return returnCommodityDetailService;
    }

    public void setReturnCommodityDetailService(ReturnCommodityDetailService returnCommodityDetailService) {
        this.returnCommodityDetailService = returnCommodityDetailService;
    }

    public void start() throws Exception {
        List<ReturnCommodityDetail> returnCommodityDetails = returnCommodityDetailService.listAll();
        assert(returnCommodityDetails != null);
        assert(returnCommodityDetails.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(returnCommodityDetails));
    }
}
