package com.fionapet.business.facade;

import com.fionapet.business.entity.Persons;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.PersonsService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 宠物主人信息
* Created by tom on 2016-07-31 16:42:52.
 */
public class PersonsRestServiceImpl extends RestServiceBase<Persons> implements PersonsRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(PersonsRestServiceImpl.class);

    private PersonsService personsService;

    public PersonsService getPersonsService() {
        return personsService;
    }

    public void setPersonsService(PersonsService personsService) {
        this.personsService = personsService;
    }

    @Override
    public CURDService<Persons> getService() {
        return personsService;
    }

}
