package com.fionapet.business.repository;

import com.fionapet.business.entity.Gest;
import com.fionapet.business.test.DataBuilder;
import com.fionapet.business.test.GestData;
import org.junit.Assert;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 会员
* Created by tom on 2016-07-22 14:21:59.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class GestDaoTest extends SpringTransactionalTestCase {
    private static final Logger LOGGER = LoggerFactory.getLogger(GestDaoTest.class);

    @Autowired
    private GestDao gestDao;

    @Test
    public void findAll(){
        List<Gest> gests = gestDao.findAllBy();

        Assert.assertNotNull(gests);

        Assert.assertEquals(gests.size(), 0);
    }

    @Test
    public void curd(){
        Gest data = DataBuilder.data(GestData.class);

        gestDao.save(data);

        Assert.assertNotNull(data.getId());

        LOGGER.info("create :{}", data);

        data = gestDao.findOne(data.getId());

        Assert.assertNotNull(data);

        LOGGER.info("find :{}", data);
    }
}
