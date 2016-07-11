package com.fionapet.business.repository;

import com.fionapet.business.entity.GestLevel;
import org.junit.Assert;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 *
 * Created by tom on 16/6/21.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class TestGestLevelDao extends SpringTransactionalTestCase {
    private static final Logger LOGGER = LoggerFactory.getLogger(TestGestLevelDao.class);
    @Autowired
    private GestLevelDao gestLevelDao;


    @Test
    public void findAll() {
        List<GestLevel> gestLevels = gestLevelDao.findAllByOrderByCreateDateAsc();

        Assert.assertNotNull(gestLevels);
        Assert.assertEquals(gestLevels.size(), 3);
    }

}
