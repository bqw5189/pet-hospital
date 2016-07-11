package com.fionapet.business.repository;

import com.fionapet.business.entity.PersonsCmApp;
import org.junit.Assert;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * t_persons_cm_app
 * Created by tom on 16/6/21.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class TestPersonsCmAppDao extends SpringTransactionalTestCase {
    private static final Logger LOGGER = LoggerFactory.getLogger(TestPersonsCmAppDao.class);
    @Autowired
    private PersonsCmAppDao personsCmAppDao;


    @Test
    public void findAll() {
        List<PersonsCmApp> personsCmApps = personsCmAppDao.findAllByOrderByCreateDateAsc();

        Assert.assertNotNull(personsCmApps);
        Assert.assertEquals(personsCmApps.size(), 0);
    }

}
