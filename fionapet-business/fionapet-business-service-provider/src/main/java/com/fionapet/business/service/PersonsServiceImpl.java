package com.fionapet.business.service;

import com.fionapet.business.entity.Persons;
import com.fionapet.business.repository.DaoBase;
import com.fionapet.business.repository.PersonsDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  宠物主人信息
 * @author baiqw
 */
public class PersonsServiceImpl extends CURDServiceBase<Persons> implements PersonsService {
    @Autowired
    private PersonsDao personsDao;

    @Override
    public DaoBase<Persons> getDao() {
        return personsDao;
    }
}
