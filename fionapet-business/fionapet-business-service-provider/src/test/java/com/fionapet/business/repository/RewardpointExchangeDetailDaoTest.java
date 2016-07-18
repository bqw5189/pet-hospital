package com.fionapet.business.repository;

import com.fionapet.business.entity.RewardpointExchangeDetail;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 赔偿交换细节
* Created by tom on 2016-07-18 11:09:24.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class RewardpointExchangeDetailDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private RewardpointExchangeDetailDao rewardpointExchangeDetailDao;

    @Test
    public void findAll(){
        List<RewardpointExchangeDetail> rewardpointExchangeDetails = rewardpointExchangeDetailDao.findAllBy();

        Assert.assertNotNull(rewardpointExchangeDetails);

        Assert.assertEquals(rewardpointExchangeDetails.size(), 0);
    }
}
