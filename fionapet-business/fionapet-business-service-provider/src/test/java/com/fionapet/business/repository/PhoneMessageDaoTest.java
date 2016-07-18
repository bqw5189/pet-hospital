package com.fionapet.business.repository;

import com.fionapet.business.entity.PhoneMessage;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 电话信息表
* Created by tom on 2016-07-18 11:00:45.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class PhoneMessageDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private PhoneMessageDao phoneMessageDao;

    @Test
    public void findAll(){
        List<PhoneMessage> phoneMessages = phoneMessageDao.findAllBy();

        Assert.assertNotNull(phoneMessages);

        Assert.assertEquals(phoneMessages.size(), 0);
    }
}
