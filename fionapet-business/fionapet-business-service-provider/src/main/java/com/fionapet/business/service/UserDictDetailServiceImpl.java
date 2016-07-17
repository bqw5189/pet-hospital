package com.fionapet.business.service;

import com.fionapet.business.entity.UserDictDetail;
import com.fionapet.business.repository.DaoBase;
import com.fionapet.business.repository.UserDictDetailDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  数据字典 字典明细项
 * @author baiqw
 */
public class UserDictDetailServiceImpl extends CURDServiceBase<UserDictDetail> implements UserDictDetailService {
    @Autowired
    private UserDictDetailDao userDictDetailDao;

    @Override
    public DaoBase<UserDictDetail> getDao() {
        return userDictDetailDao;
    }
}
