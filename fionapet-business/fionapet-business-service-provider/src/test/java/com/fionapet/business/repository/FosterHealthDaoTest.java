package com.fionapet.business.repository;

import com.fionapet.business.entity.FosterHealth;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 养育健康状况表
* Created by tom on 2016-07-25 09:32:32.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class FosterHealthDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private FosterHealthDao fosterHealthDao;

    @Test
    public void findAll(){
        List<FosterHealth> fosterHealths = fosterHealthDao.findAllBy();

        Assert.assertNotNull(fosterHealths);

        Assert.assertEquals(fosterHealths.size(), 0);
    }
}
