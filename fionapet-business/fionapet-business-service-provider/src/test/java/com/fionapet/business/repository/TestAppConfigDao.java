package com.fionapet.business.repository;

import com.fionapet.business.entity.AppConfig;
import org.junit.Assert;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 提醒配置表
 * Created by tom on 16/6/21.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class TestAppConfigDao extends SpringTransactionalTestCase {
    private static final Logger LOGGER = LoggerFactory.getLogger(TestAppConfigDao.class);
    @Autowired
    private AppConfigDao appConfigDao;


    @Test
    public void findAll() {
        List<AppConfig> appConfigs = appConfigDao.findAllByOrderByCreateDateAsc();

        Assert.assertNotNull(appConfigs);
        Assert.assertEquals(appConfigs.size(), 101);
    }

}
