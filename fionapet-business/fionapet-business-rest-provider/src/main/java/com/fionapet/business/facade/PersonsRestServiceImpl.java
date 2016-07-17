package com.fionapet.business.facade;

import com.fionapet.business.entity.Persons;
import com.fionapet.business.service.CURDService;
import com.fionapet.business.service.PersonsService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 宠物主人信息
 * User: baiqw
 * Date: 14-12-9
 * Time: 下午3:45
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
