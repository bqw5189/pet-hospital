package com.fionapet.business.service;

import com.fionapet.business.entity.PersonsAppointment;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.PersonsAppointmentDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  宠物主人
* Created by tom on 2016-07-31 16:42:52.
 */
public class PersonsAppointmentServiceImpl extends CURDServiceBase<PersonsAppointment> implements PersonsAppointmentService {
    @Autowired
    private PersonsAppointmentDao personsAppointmentDao;

    @Override
    public DaoBase<PersonsAppointment> getDao() {
        return personsAppointmentDao;
    }
}
