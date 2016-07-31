package com.fionapet.business.repository;

import com.fionapet.business.entity.UserDict;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 用户字典
* Created by tom on 2016-07-31 16:36:24.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class UserDictDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private UserDictDao userDictDao;

    @Test
    public void findAll(){
        List<UserDict> userDicts = userDictDao.findAllBy();

        Assert.assertNotNull(userDicts);

        Assert.assertEquals(userDicts.size(), 10);
    }
}
