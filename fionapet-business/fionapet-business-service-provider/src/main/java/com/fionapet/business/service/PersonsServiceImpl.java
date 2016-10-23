package com.fionapet.business.service;

import cn.fiona.pet.account.entity.User;
import cn.fiona.pet.account.service.AccountService;
import com.fionapet.business.entity.Persons;
import com.fionapet.business.repository.PersonsDao;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  宠物主人信息
* Created by tom on 2016-07-31 16:42:52.
 */
public class PersonsServiceImpl extends CURDServiceBase<Persons> implements PersonsService {
    @Autowired
    private PersonsDao personsDao;

    @Autowired
    private AccountService accountService;

    @Override
    public DaoBase<Persons> getDao() {
        return personsDao;
    }


    public AccountService getAccountService() {
        return accountService;
    }

    public void setAccountService(AccountService accountService) {
        this.accountService = accountService;
    }

    @Override
    public Persons createOrUpdte(Persons entity) {
        Persons persons = super.createOrUpdte(entity);

        User user = new User();
        user.setLoginName(persons.getPersonName());
        user.setName(persons.getPersonName());
        user.setPlainPassword(entity.getPassword());
        user.setId(persons.getId());
        user.setSalt("6d65d24122c30500");

        accountService.createUser(user);



        return persons;
    }
}
