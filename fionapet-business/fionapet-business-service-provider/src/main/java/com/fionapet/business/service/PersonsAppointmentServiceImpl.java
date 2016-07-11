package com.fionapet.business.service;

import com.fionapet.business.entity.PersonsAppointment;
import com.fionapet.business.repository.DaoBase;
import com.fionapet.business.repository.PersonsAppointmentDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  t_persons_appointment
 * @author baiqw
 */
public class PersonsAppointmentServiceImpl extends CURDServiceBase<PersonsAppointment> implements PersonsAppointmentService {
    @Autowired
    private PersonsAppointmentDao personsAppointmentDao;

    @Override
    public DaoBase<PersonsAppointment> getDao() {
        return personsAppointmentDao;
    }
}
