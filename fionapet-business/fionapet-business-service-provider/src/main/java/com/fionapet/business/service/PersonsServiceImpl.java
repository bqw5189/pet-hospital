package com.fionapet.business.service;

import com.fionapet.business.entity.Persons;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.PersonsDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  宠物主人信息
* Created by tom on 2016-07-31 16:42:52.
 */
public class PersonsServiceImpl extends CURDServiceBase<Persons> implements PersonsService {
    @Autowired
    private PersonsDao personsDao;

    @Override
    public DaoBase<Persons> getDao() {
        return personsDao;
    }
}
