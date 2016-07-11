package com.fionapet.business.repository;

import com.fionapet.business.entity.UserDict;
import org.junit.Assert;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 应用字典大类
 * Created by tom on 16/6/21.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class TestUserDictDao extends SpringTransactionalTestCase {
    private static final Logger LOGGER = LoggerFactory.getLogger(TestUserDictDao.class);
    @Autowired
    private UserDictDao userDictDao;


    @Test
    public void findAll() {
        List<UserDict> userDicts = userDictDao.findAllByOrderByCreateDateAsc();

        Assert.assertNotNull(userDicts);
        Assert.assertEquals(userDicts.size(), 10);
    }

}
