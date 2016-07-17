package com.fionapet.business.facade;

import com.fionapet.business.entity.PersonsCmApp;
import com.fionapet.business.service.CURDService;
import com.fionapet.business.service.PersonsCmAppService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * t_persons_cm_app
 * User: baiqw
 * Date: 14-12-9
 * Time: 下午3:45
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
