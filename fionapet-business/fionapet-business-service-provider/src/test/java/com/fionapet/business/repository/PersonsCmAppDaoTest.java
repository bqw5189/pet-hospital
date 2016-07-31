package com.fionapet.business.repository;

import com.fionapet.business.entity.PersonsCmApp;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 宠物主人
* Created by tom on 2016-07-31 16:36:25.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class PersonsCmAppDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private PersonsCmAppDao personsCmAppDao;

    @Test
    public void findAll(){
        List<PersonsCmApp> personsCmApps = personsCmAppDao.findAllBy();

        Assert.assertNotNull(personsCmApps);

        Assert.assertEquals(personsCmApps.size(), 0);
    }
}
