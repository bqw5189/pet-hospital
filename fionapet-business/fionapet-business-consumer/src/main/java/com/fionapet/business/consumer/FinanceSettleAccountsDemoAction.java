package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.FinanceSettleAccounts;
import com.fionapet.business.service.FinanceSettleAccountsService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-25 09:32:33.
 */
public class FinanceSettleAccountsDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(FinanceSettleAccountsDemoAction.class);
    private FinanceSettleAccountsService financeSettleAccountsService;

    public FinanceSettleAccountsService getFinanceSettleAccountsService() {
        return financeSettleAccountsService;
    }

    public void setFinanceSettleAccountsService(FinanceSettleAccountsService financeSettleAccountsService) {
        this.financeSettleAccountsService = financeSettleAccountsService;
    }

    public void start() throws Exception {
        List<FinanceSettleAccounts> financeSettleAccountss = financeSettleAccountsService.listAll();
        assert(financeSettleAccountss != null);
        assert(financeSettleAccountss.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(financeSettleAccountss));
    }
}
