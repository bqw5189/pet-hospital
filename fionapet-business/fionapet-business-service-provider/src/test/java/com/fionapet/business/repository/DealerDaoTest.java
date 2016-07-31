package com.fionapet.business.repository;

import com.fionapet.business.entity.Dealer;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 代理商
* Created by tom on 2016-07-31 16:42:51.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class DealerDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private DealerDao dealerDao;

    @Test
    public void findAll(){
        List<Dealer> dealers = dealerDao.findAllBy();

        Assert.assertNotNull(dealers);

        Assert.assertEquals(dealers.size(), 5);
    }
}
