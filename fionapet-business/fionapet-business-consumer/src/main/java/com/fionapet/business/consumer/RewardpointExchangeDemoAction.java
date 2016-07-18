package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.RewardpointExchange;
import com.fionapet.business.service.RewardpointExchangeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-18 11:09:24.
 */
public class RewardpointExchangeDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(RewardpointExchangeDemoAction.class);
    private RewardpointExchangeService rewardpointExchangeService;

    public RewardpointExchangeService getRewardpointExchangeService() {
        return rewardpointExchangeService;
    }

    public void setRewardpointExchangeService(RewardpointExchangeService rewardpointExchangeService) {
        this.rewardpointExchangeService = rewardpointExchangeService;
    }

    public void start() throws Exception {
        List<RewardpointExchange> rewardpointExchanges = rewardpointExchangeService.listAll();
        assert(rewardpointExchanges != null);
        assert(rewardpointExchanges.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(rewardpointExchanges));
    }
}
