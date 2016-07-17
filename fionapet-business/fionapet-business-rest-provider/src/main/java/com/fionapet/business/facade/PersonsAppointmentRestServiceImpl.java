package com.fionapet.business.facade;

import com.fionapet.business.entity.PersonsAppointment;
import com.fionapet.business.service.CURDService;
import com.fionapet.business.service.PersonsAppointmentService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * t_persons_appointment
 * User: baiqw
 * Date: 14-12-9
 * Time: 下午3:45
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
