package com.fionapet.business.facade;

import com.fionapet.business.entity.UserDict;
import com.fionapet.business.service.CURDService;
import com.fionapet.business.service.UserDictService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 应用字典大类
 * User: baiqw
 * Date: 14-12-9
 * Time: 下午3:45
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
