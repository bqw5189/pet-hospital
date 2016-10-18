package com.fionapet.business.service;

import cn.fiona.pet.account.entity.User;
import cn.fiona.pet.account.exception.ApiException;
import cn.fiona.pet.account.facade.LoginVO;
import com.fionapet.business.entity.Persons;
import org.apache.commons.lang3.StringUtils;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.PersonsDao;
import org.springframework.beans.factory.annotation.Autowired;

import java.security.InvalidParameterException;

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

    @Override
    public String login(LoginVO loginVO) throws ApiException {
        Persons persons = personsDao.findByPersonName(loginVO.getName());



        if(null != persons){
            if (StringUtils.isBlank(loginVO.getPassword())){
                throw new InvalidParameterException("密码不能为空!");
            }

            if (!loginVO.getPassword().equalsIgnoreCase(persons.getPassword())){
                throw new InvalidParameterException("密码错误!");
            }

            return persons.getId();
        }
        return null;
    }

    @Override
    public boolean validateToken(String token) throws ApiException {
        Persons persons = personsDao.findOne(token);
        if (null != persons){
            return true;
        }
        return false;
    }

    @Override
    public User getByToken(String token) throws ApiException {
        Persons persons = personsDao.findOne(token);
        User user = new User();
        user.setId(persons.getId());
        user.setLoginName(persons.getPersonName());
        user.setName(persons.getPersonName());
        return user;
    }
}
