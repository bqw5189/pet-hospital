package com.fionapet.business.facade;

import com.fionapet.business.entity.RewardpointExchange;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.RewardpointExchangeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 赔偿交换
* Created by tom on 2016-07-18 11:56:11.
 */
public class RewardpointExchangeRestServiceImpl extends RestServiceBase<RewardpointExchange> implements RewardpointExchangeRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(RewardpointExchangeRestServiceImpl.class);

    private RewardpointExchangeService rewardpointExchangeService;

    public RewardpointExchangeService getRewardpointExchangeService() {
        return rewardpointExchangeService;
    }

    public void setRewardpointExchangeService(RewardpointExchangeService rewardpointExchangeService) {
        this.rewardpointExchangeService = rewardpointExchangeService;
    }

    @Override
    public CURDService<RewardpointExchange> getService() {
        return rewardpointExchangeService;
    }

}
