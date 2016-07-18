package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.PrepayMoney;
import com.fionapet.business.service.PrepayMoneyService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-18 11:09:23.
 */
public class PrepayMoneyDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(PrepayMoneyDemoAction.class);
    private PrepayMoneyService prepayMoneyService;

    public PrepayMoneyService getPrepayMoneyService() {
        return prepayMoneyService;
    }

    public void setPrepayMoneyService(PrepayMoneyService prepayMoneyService) {
        this.prepayMoneyService = prepayMoneyService;
    }

    public void start() throws Exception {
        List<PrepayMoney> prepayMoneys = prepayMoneyService.listAll();
        assert(prepayMoneys != null);
        assert(prepayMoneys.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(prepayMoneys));
    }
}
