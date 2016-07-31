package com.fionapet.business.facade;

import com.fionapet.business.entity.UserDict;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.UserDictService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 用户字典
* Created by tom on 2016-07-31 16:36:24.
 */
public class UserDictRestServiceImpl extends RestServiceBase<UserDict> implements UserDictRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(UserDictRestServiceImpl.class);

    private UserDictService userDictService;

    public UserDictService getUserDictService() {
        return userDictService;
    }

    public void setUserDictService(UserDictService userDictService) {
        this.userDictService = userDictService;
    }

    @Override
    public CURDService<UserDict> getService() {
        return userDictService;
    }

}
