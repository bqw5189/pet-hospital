package com.fionapet.business.repository;

import com.fionapet.business.entity.MicroSmsConfig;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 消息提醒配置表
* Created by tom on 2016-07-18 11:09:23.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class MicroSmsConfigDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private MicroSmsConfigDao microSmsConfigDao;

    @Test
    public void findAll(){
        List<MicroSmsConfig> microSmsConfigs = microSmsConfigDao.findAllBy();

        Assert.assertNotNull(microSmsConfigs);

        Assert.assertEquals(microSmsConfigs.size(), 28);
    }
}
