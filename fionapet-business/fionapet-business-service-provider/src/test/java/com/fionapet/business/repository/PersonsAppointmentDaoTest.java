package com.fionapet.business.repository;

import com.fionapet.business.entity.PersonsAppointment;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 宠物主人
* Created by tom on 2016-07-31 16:42:52.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class PersonsAppointmentDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private PersonsAppointmentDao personsAppointmentDao;

    @Test
    public void findAll(){
        List<PersonsAppointment> personsAppointments = personsAppointmentDao.findAllBy();

        Assert.assertNotNull(personsAppointments);

        Assert.assertEquals(personsAppointments.size(), 0);
    }
}
