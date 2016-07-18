package com.fionapet.business.facade;

import com.fionapet.business.entity.RewardpointExchangeDetail;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.RewardpointExchangeDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 赔偿交换细节
* Created by tom on 2016-07-18 11:56:10.
 */
public class RewardpointExchangeDetailRestServiceImpl extends RestServiceBase<RewardpointExchangeDetail> implements RewardpointExchangeDetailRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(RewardpointExchangeDetailRestServiceImpl.class);

    private RewardpointExchangeDetailService rewardpointExchangeDetailService;

    public RewardpointExchangeDetailService getRewardpointExchangeDetailService() {
        return rewardpointExchangeDetailService;
    }

    public void setRewardpointExchangeDetailService(RewardpointExchangeDetailService rewardpointExchangeDetailService) {
        this.rewardpointExchangeDetailService = rewardpointExchangeDetailService;
    }

    @Override
    public CURDService<RewardpointExchangeDetail> getService() {
        return rewardpointExchangeDetailService;
    }

}
