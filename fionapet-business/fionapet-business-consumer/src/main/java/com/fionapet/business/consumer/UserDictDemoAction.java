package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.UserDict;
import com.fionapet.business.service.UserDictService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-31 16:36:24.
 */
public class UserDictDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(UserDictDemoAction.class);
    private UserDictService userDictService;

    public UserDictService getUserDictService() {
        return userDictService;
    }

    public void setUserDictService(UserDictService userDictService) {
        this.userDictService = userDictService;
    }

    public void start() throws Exception {
        List<UserDict> userDicts = userDictService.listAll();
        assert(userDicts != null);
        assert(userDicts.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(userDicts));
    }
}
