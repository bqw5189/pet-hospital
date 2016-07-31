package com.fionapet.business.service;

import com.fionapet.business.entity.UserDict;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.UserDictDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  用户字典
* Created by tom on 2016-07-31 16:36:24.
 */
public class UserDictServiceImpl extends CURDServiceBase<UserDict> implements UserDictService {
    @Autowired
    private UserDictDao userDictDao;

    @Override
    public DaoBase<UserDict> getDao() {
        return userDictDao;
    }
}
