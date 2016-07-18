package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.VipInputTem;
import com.fionapet.business.service.VipInputTemService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-18 11:09:24.
 */
public class VipInputTemDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(VipInputTemDemoAction.class);
    private VipInputTemService vipInputTemService;

    public VipInputTemService getVipInputTemService() {
        return vipInputTemService;
    }

    public void setVipInputTemService(VipInputTemService vipInputTemService) {
        this.vipInputTemService = vipInputTemService;
    }

    public void start() throws Exception {
        List<VipInputTem> vipInputTems = vipInputTemService.listAll();
        assert(vipInputTems != null);
        assert(vipInputTems.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(vipInputTems));
    }
}
