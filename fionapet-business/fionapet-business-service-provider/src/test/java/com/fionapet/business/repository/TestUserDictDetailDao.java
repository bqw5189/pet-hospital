package com.fionapet.business.repository;

import com.fionapet.business.entity.UserDictDetail;
import org.junit.Assert;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 数据字典 字典明细项
 * Created by tom on 16/6/21.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class TestUserDictDetailDao extends SpringTransactionalTestCase {
    private static final Logger LOGGER = LoggerFactory.getLogger(TestUserDictDetailDao.class);
    @Autowired
    private UserDictDetailDao userDictDetailDao;


    @Test
    public void findAll() {
        List<UserDictDetail> userDictDetails = userDictDetailDao.findAllByOrderByCreateDateAsc();

        Assert.assertNotNull(userDictDetails);
        Assert.assertEquals(userDictDetails.size(), 91);
    }

}
