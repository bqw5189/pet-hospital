package com.fionapet.business.facade;

import com.fionapet.business.entity.PrepayMoney;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.PrepayMoneyService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 提前付费表
* Created by tom on 2016-07-18 11:56:10.
 */
public class PrepayMoneyRestServiceImpl extends RestServiceBase<PrepayMoney> implements PrepayMoneyRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(PrepayMoneyRestServiceImpl.class);

    private PrepayMoneyService prepayMoneyService;

    public PrepayMoneyService getPrepayMoneyService() {
        return prepayMoneyService;
    }

    public void setPrepayMoneyService(PrepayMoneyService prepayMoneyService) {
        this.prepayMoneyService = prepayMoneyService;
    }

    @Override
    public CURDService<PrepayMoney> getService() {
        return prepayMoneyService;
    }

}
