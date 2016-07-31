package com.fionapet.business.repository;

import com.fionapet.business.entity.Persons;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 宠物主人信息
* Created by tom on 2016-07-31 16:42:52.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class PersonsDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private PersonsDao personsDao;

    @Test
    public void findAll(){
        List<Persons> personss = personsDao.findAllBy();

        Assert.assertNotNull(personss);

        Assert.assertEquals(personss.size(), 0);
    }
}
