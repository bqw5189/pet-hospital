package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.Gest;
import com.fionapet.business.service.GestService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-22 14:21:59.
 */
public class GestDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(GestDemoAction.class);
    private GestService gestService;

    public GestService getGestService() {
        return gestService;
    }

    public void setGestService(GestService gestService) {
        this.gestService = gestService;
    }

    public void start() throws Exception {
        List<Gest> gests = gestService.listAll();
        assert(gests != null);
        assert(gests.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(gests));
    }
}
