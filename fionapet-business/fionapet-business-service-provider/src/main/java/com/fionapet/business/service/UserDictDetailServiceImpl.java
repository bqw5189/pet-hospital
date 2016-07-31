package com.fionapet.business.service;

import com.fionapet.business.entity.UserDictDetail;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.UserDictDetailDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  数据字典 字典明细项
* Created by tom on 2016-07-31 13:37:08.
 */
public class UserDictDetailServiceImpl extends CURDServiceBase<UserDictDetail> implements UserDictDetailService {
    @Autowired
    private UserDictDetailDao userDictDetailDao;

    @Override
    public DaoBase<UserDictDetail> getDao() {
        return userDictDetailDao;
    }
}
