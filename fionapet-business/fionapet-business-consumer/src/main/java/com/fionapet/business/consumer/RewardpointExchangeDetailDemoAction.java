package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.RewardpointExchangeDetail;
import com.fionapet.business.service.RewardpointExchangeDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-18 11:09:24.
 */
public class RewardpointExchangeDetailDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(RewardpointExchangeDetailDemoAction.class);
    private RewardpointExchangeDetailService rewardpointExchangeDetailService;

    public RewardpointExchangeDetailService getRewardpointExchangeDetailService() {
        return rewardpointExchangeDetailService;
    }

    public void setRewardpointExchangeDetailService(RewardpointExchangeDetailService rewardpointExchangeDetailService) {
        this.rewardpointExchangeDetailService = rewardpointExchangeDetailService;
    }

    public void start() throws Exception {
        List<RewardpointExchangeDetail> rewardpointExchangeDetails = rewardpointExchangeDetailService.listAll();
        assert(rewardpointExchangeDetails != null);
        assert(rewardpointExchangeDetails.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(rewardpointExchangeDetails));
    }
}
