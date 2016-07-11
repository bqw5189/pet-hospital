package com.fionapet.business.repository;

import com.fionapet.business.entity.PersonsAppointment;
import org.junit.Assert;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * t_persons_appointment
 * Created by tom on 16/6/21.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class TestPersonsAppointmentDao extends SpringTransactionalTestCase {
    private static final Logger LOGGER = LoggerFactory.getLogger(TestPersonsAppointmentDao.class);
    @Autowired
    private PersonsAppointmentDao personsAppointmentDao;


    @Test
    public void findAll() {
        List<PersonsAppointment> personsAppointments = personsAppointmentDao.findAllByOrderByCreateDateAsc();

        Assert.assertNotNull(personsAppointments);
        Assert.assertEquals(personsAppointments.size(), 0);
    }

}
