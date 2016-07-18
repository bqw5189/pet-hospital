package com.fionapet.business.repository;

import com.fionapet.business.entity.Service;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 服务主表
* Created by tom on 2016-07-18 11:09:25.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class ServiceDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private ServiceDao serviceDao;

    @Test
    public void findAll(){
        List<Service> services = serviceDao.findAllBy();

        Assert.assertNotNull(services);

        Assert.assertEquals(services.size(), 0);
    }
}
