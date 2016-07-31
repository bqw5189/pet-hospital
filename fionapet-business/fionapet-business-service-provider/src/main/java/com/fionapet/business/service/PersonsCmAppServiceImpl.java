package com.fionapet.business.service;

import com.fionapet.business.entity.PersonsCmApp;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.PersonsCmAppDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  宠物主人
* Created by tom on 2016-07-31 16:36:25.
 */
public class PersonsCmAppServiceImpl extends CURDServiceBase<PersonsCmApp> implements PersonsCmAppService {
    @Autowired
    private PersonsCmAppDao personsCmAppDao;

    @Override
    public DaoBase<PersonsCmApp> getDao() {
        return personsCmAppDao;
    }
}
