package com.fionapet.business.repository;

import com.fionapet.business.entity.RewardPointLog;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 序列号
* Created by tom on 2016-07-18 11:09:22.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class RewardPointLogDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private RewardPointLogDao rewardPointLogDao;

    @Test
    public void findAll(){
        List<RewardPointLog> rewardPointLogs = rewardPointLogDao.findAllBy();

        Assert.assertNotNull(rewardPointLogs);

        Assert.assertEquals(rewardPointLogs.size(), 0);
    }
}
