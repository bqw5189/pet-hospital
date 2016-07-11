package com.fionapet.business.facade;

import com.fionapet.business.entity.UserDictDetail;
import com.fionapet.business.service.CURDService;
import com.fionapet.business.service.UserDictDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 数据字典 字典明细项
 * User: baiqw
 * Date: 14-12-9
 * Time: 下午3:45
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
