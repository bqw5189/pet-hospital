package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.Persons;
import com.fionapet.business.service.PersonsService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-31 16:42:52.
 */
public class PersonsDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(PersonsDemoAction.class);
    private PersonsService personsService;

    public PersonsService getPersonsService() {
        return personsService;
    }

    public void setPersonsService(PersonsService personsService) {
        this.personsService = personsService;
    }

    public void start() throws Exception {
        List<Persons> personss = personsService.listAll();
        assert(personss != null);
        assert(personss.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(personss));
    }
}
