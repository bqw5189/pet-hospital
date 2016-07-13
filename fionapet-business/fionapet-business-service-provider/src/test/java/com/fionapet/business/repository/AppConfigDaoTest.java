package com.fionapet.business.repository;

import com.fionapet.business.entity.AppConfig;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 应用配置
* Created by tom on 2016-07-13 15:23:53.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class AppConfigDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private AppConfigDao appConfigDao;

    @Test
    public void findAll(){
        List<AppConfig> appConfigs = appConfigDao.findAllBy();

        Assert.assertNotNull(appConfigs);

        Assert.assertEquals(appConfigs.size(), 101);
    }
}
