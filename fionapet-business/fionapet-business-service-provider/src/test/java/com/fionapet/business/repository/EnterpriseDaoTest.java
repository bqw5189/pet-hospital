package com.fionapet.business.repository;

import com.fionapet.business.entity.Enterprise;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 企业信息表
* Created by tom on 2016-07-25 09:32:31.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class EnterpriseDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private EnterpriseDao enterpriseDao;

    @Test
    public void findAll(){
        List<Enterprise> enterprises = enterpriseDao.findAllBy();

        Assert.assertNotNull(enterprises);

        Assert.assertEquals(enterprises.size(), 0);
    }
}
