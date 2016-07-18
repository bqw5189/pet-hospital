package com.fionapet.business.repository;

import com.fionapet.business.entity.ServiceDetail;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 服务明细
* Created by tom on 2016-07-18 11:09:24.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class ServiceDetailDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private ServiceDetailDao serviceDetailDao;

    @Test
    public void findAll(){
        List<ServiceDetail> serviceDetails = serviceDetailDao.findAllBy();

        Assert.assertNotNull(serviceDetails);

        Assert.assertEquals(serviceDetails.size(), 0);
    }
}
