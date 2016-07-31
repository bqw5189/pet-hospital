package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.UserDictDetail;
import com.fionapet.business.service.UserDictDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-31 13:37:08.
 */
public class UserDictDetailDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(UserDictDetailDemoAction.class);
    private UserDictDetailService userDictDetailService;

    public UserDictDetailService getUserDictDetailService() {
        return userDictDetailService;
    }

    public void setUserDictDetailService(UserDictDetailService userDictDetailService) {
        this.userDictDetailService = userDictDetailService;
    }

    public void start() throws Exception {
        List<UserDictDetail> userDictDetails = userDictDetailService.listAll();
        assert(userDictDetails != null);
        assert(userDictDetails.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(userDictDetails));
    }
}
