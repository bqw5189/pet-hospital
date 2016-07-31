package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.BusinesCate;
import com.fionapet.business.service.BusinesCateService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-31 16:36:25.
 */
public class BusinesCateDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(BusinesCateDemoAction.class);
    private BusinesCateService businesCateService;

    public BusinesCateService getBusinesCateService() {
        return businesCateService;
    }

    public void setBusinesCateService(BusinesCateService businesCateService) {
        this.businesCateService = businesCateService;
    }

    public void start() throws Exception {
        List<BusinesCate> businesCates = businesCateService.listAll();
        assert(businesCates != null);
        assert(businesCates.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(businesCates));
    }
}
