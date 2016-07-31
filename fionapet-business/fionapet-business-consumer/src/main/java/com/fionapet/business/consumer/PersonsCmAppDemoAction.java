package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.PersonsCmApp;
import com.fionapet.business.service.PersonsCmAppService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-31 16:36:25.
 */
public class PersonsCmAppDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(PersonsCmAppDemoAction.class);
    private PersonsCmAppService personsCmAppService;

    public PersonsCmAppService getPersonsCmAppService() {
        return personsCmAppService;
    }

    public void setPersonsCmAppService(PersonsCmAppService personsCmAppService) {
        this.personsCmAppService = personsCmAppService;
    }

    public void start() throws Exception {
        List<PersonsCmApp> personsCmApps = personsCmAppService.listAll();
        assert(personsCmApps != null);
        assert(personsCmApps.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(personsCmApps));
    }
}
