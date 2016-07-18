package com.fionapet.business.repository;

import com.fionapet.business.entity.VipInputTem;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * VIP信息
* Created by tom on 2016-07-18 11:09:24.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class VipInputTemDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private VipInputTemDao vipInputTemDao;

    @Test
    public void findAll(){
        List<VipInputTem> vipInputTems = vipInputTemDao.findAllBy();

        Assert.assertNotNull(vipInputTems);

        Assert.assertEquals(vipInputTems.size(), 0);
    }
}
