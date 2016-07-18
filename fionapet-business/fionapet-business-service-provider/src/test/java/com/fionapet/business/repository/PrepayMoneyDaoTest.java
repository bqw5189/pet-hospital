package com.fionapet.business.repository;

import com.fionapet.business.entity.PrepayMoney;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 提前付费表
* Created by tom on 2016-07-18 11:09:23.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class PrepayMoneyDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private PrepayMoneyDao prepayMoneyDao;

    @Test
    public void findAll(){
        List<PrepayMoney> prepayMoneys = prepayMoneyDao.findAllBy();

        Assert.assertNotNull(prepayMoneys);

        Assert.assertEquals(prepayMoneys.size(), 0);
    }
}
