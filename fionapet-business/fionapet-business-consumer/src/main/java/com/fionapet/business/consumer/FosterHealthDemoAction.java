package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.FosterHealth;
import com.fionapet.business.service.FosterHealthService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-25 09:32:32.
 */
public class FosterHealthDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(FosterHealthDemoAction.class);
    private FosterHealthService fosterHealthService;

    public FosterHealthService getFosterHealthService() {
        return fosterHealthService;
    }

    public void setFosterHealthService(FosterHealthService fosterHealthService) {
        this.fosterHealthService = fosterHealthService;
    }

    public void start() throws Exception {
        List<FosterHealth> fosterHealths = fosterHealthService.listAll();
        assert(fosterHealths != null);
        assert(fosterHealths.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(fosterHealths));
    }
}
