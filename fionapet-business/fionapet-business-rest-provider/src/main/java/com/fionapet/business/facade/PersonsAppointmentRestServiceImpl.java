package com.fionapet.business.facade;

import com.fionapet.business.entity.PersonsAppointment;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.PersonsAppointmentService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 宠物主人
* Created by tom on 2016-07-31 16:42:52.
 */
public class PersonsAppointmentRestServiceImpl extends RestServiceBase<PersonsAppointment> implements PersonsAppointmentRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(PersonsAppointmentRestServiceImpl.class);

    private PersonsAppointmentService personsAppointmentService;

    public PersonsAppointmentService getPersonsAppointmentService() {
        return personsAppointmentService;
    }

    public void setPersonsAppointmentService(PersonsAppointmentService personsAppointmentService) {
        this.personsAppointmentService = personsAppointmentService;
    }

    @Override
    public CURDService<PersonsAppointment> getService() {
        return personsAppointmentService;
    }

}
