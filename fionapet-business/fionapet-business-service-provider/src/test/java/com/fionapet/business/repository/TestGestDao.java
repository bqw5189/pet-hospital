package com.fionapet.business.repository;

import com.fionapet.business.entity.Gest;
import org.junit.Assert;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 宠物主人
 * Created by tom on 16/6/21.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class TestGestDao extends SpringTransactionalTestCase {
    private static final Logger LOGGER = LoggerFactory.getLogger(TestGestDao.class);
    @Autowired
    private GestDao gestDao;


    @Test
    public void findAll() {
        List<Gest> gests = gestDao.findAllByOrderByCreateDateAsc();

        Assert.assertNotNull(gests);
        Assert.assertEquals(gests.size(), 0);
    }

}
