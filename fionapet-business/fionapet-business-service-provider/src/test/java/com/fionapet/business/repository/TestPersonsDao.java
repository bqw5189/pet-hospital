package com.fionapet.business.repository;

import com.fionapet.business.entity.Persons;
import org.junit.Assert;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 宠物主人信息
 * Created by tom on 16/6/21.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class TestPersonsDao extends SpringTransactionalTestCase {
    private static final Logger LOGGER = LoggerFactory.getLogger(TestPersonsDao.class);
    @Autowired
    private PersonsDao personsDao;


    @Test
    public void findAll() {
        List<Persons> personss = personsDao.findAllByOrderByCreateDateAsc();

        Assert.assertNotNull(personss);
        Assert.assertEquals(personss.size(), 0);
    }

}
