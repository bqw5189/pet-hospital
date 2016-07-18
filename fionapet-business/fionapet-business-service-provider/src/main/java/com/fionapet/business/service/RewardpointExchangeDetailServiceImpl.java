package com.fionapet.business.service;

import com.fionapet.business.entity.RewardpointExchangeDetail;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.RewardpointExchangeDetailDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  赔偿交换细节
* Created by tom on 2016-07-18 11:56:11.
 */
public class RewardpointExchangeDetailServiceImpl extends CURDServiceBase<RewardpointExchangeDetail> implements RewardpointExchangeDetailService {
    @Autowired
    private RewardpointExchangeDetailDao rewardpointExchangeDetailDao;

    @Override
    public DaoBase<RewardpointExchangeDetail> getDao() {
        return rewardpointExchangeDetailDao;
    }
}
