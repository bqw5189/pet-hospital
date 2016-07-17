package com.fionapet.business.service;

import com.fionapet.business.entity.UserDict;
import com.fionapet.business.repository.DaoBase;
import com.fionapet.business.repository.UserDictDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  应用字典大类
 * @author baiqw
 */
public class UserDictServiceImpl extends CURDServiceBase<UserDict> implements UserDictService {
    @Autowired
    private UserDictDao userDictDao;

    @Override
    public DaoBase<UserDict> getDao() {
        return userDictDao;
    }
}
