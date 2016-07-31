package com.fionapet.business.facade;

import com.fionapet.business.entity.UserDictDetail;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.UserDictDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 数据字典 字典明细项
* Created by tom on 2016-07-31 13:37:08.
 */
public class UserDictDetailRestServiceImpl extends RestServiceBase<UserDictDetail> implements UserDictDetailRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(UserDictDetailRestServiceImpl.class);

    private UserDictDetailService userDictDetailService;

    public UserDictDetailService getUserDictDetailService() {
        return userDictDetailService;
    }

    public void setUserDictDetailService(UserDictDetailService userDictDetailService) {
        this.userDictDetailService = userDictDetailService;
    }

    @Override
    public CURDService<UserDictDetail> getService() {
        return userDictDetailService;
    }

}
