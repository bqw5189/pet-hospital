package com.fionapet.business.facade;

import com.fionapet.business.entity.PersonsCmApp;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.PersonsCmAppService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 宠物主人
* Created by tom on 2016-07-31 16:36:25.
 */
public class PersonsCmAppRestServiceImpl extends RestServiceBase<PersonsCmApp> implements PersonsCmAppRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(PersonsCmAppRestServiceImpl.class);

    private PersonsCmAppService personsCmAppService;

    public PersonsCmAppService getPersonsCmAppService() {
        return personsCmAppService;
    }

    public void setPersonsCmAppService(PersonsCmAppService personsCmAppService) {
        this.personsCmAppService = personsCmAppService;
    }

    @Override
    public CURDService<PersonsCmApp> getService() {
        return personsCmAppService;
    }

}
