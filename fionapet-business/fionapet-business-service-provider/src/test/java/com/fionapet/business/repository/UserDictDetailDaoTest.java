package com.fionapet.business.repository;

import com.fionapet.business.entity.UserDictDetail;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 数据字典 字典明细项
* Created by tom on 2016-07-31 13:37:08.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class UserDictDetailDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private UserDictDetailDao userDictDetailDao;

    @Test
    public void findAll(){
        List<UserDictDetail> userDictDetails = userDictDetailDao.findAllBy();

        Assert.assertNotNull(userDictDetails);

        Assert.assertEquals(userDictDetails.size(), 91);
    }
}
