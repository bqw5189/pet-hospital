package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.PersonsAppointment;
import com.fionapet.business.service.PersonsAppointmentService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-31 16:42:52.
 */
public class PersonsAppointmentDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(PersonsAppointmentDemoAction.class);
    private PersonsAppointmentService personsAppointmentService;

    public PersonsAppointmentService getPersonsAppointmentService() {
        return personsAppointmentService;
    }

    public void setPersonsAppointmentService(PersonsAppointmentService personsAppointmentService) {
        this.personsAppointmentService = personsAppointmentService;
    }

    public void start() throws Exception {
        List<PersonsAppointment> personsAppointments = personsAppointmentService.listAll();
        assert(personsAppointments != null);
        assert(personsAppointments.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(personsAppointments));
    }
}
