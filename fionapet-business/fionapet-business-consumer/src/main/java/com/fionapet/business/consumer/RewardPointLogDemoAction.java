package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.RewardPointLog;
import com.fionapet.business.service.RewardPointLogService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-18 11:09:23.
 */
public class RewardPointLogDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(RewardPointLogDemoAction.class);
    private RewardPointLogService rewardPointLogService;

    public RewardPointLogService getRewardPointLogService() {
        return rewardPointLogService;
    }

    public void setRewardPointLogService(RewardPointLogService rewardPointLogService) {
        this.rewardPointLogService = rewardPointLogService;
    }

    public void start() throws Exception {
        List<RewardPointLog> rewardPointLogs = rewardPointLogService.listAll();
        assert(rewardPointLogs != null);
        assert(rewardPointLogs.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(rewardPointLogs));
    }
}
