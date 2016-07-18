package com.fionapet.business.repository;

import com.fionapet.business.entity.RewardpointExchange;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 赔偿交换
* Created by tom on 2016-07-18 11:09:24.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class RewardpointExchangeDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private RewardpointExchangeDao rewardpointExchangeDao;

    @Test
    public void findAll(){
        List<RewardpointExchange> rewardpointExchanges = rewardpointExchangeDao.findAllBy();

        Assert.assertNotNull(rewardpointExchanges);

        Assert.assertEquals(rewardpointExchanges.size(), 0);
    }
}
