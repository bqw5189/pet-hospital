package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.FinanceSettleAccountsDetail;
import com.fionapet.business.service.FinanceSettleAccountsDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-25 09:32:33.
 */
public class FinanceSettleAccountsDetailDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(FinanceSettleAccountsDetailDemoAction.class);
    private FinanceSettleAccountsDetailService financeSettleAccountsDetailService;

    public FinanceSettleAccountsDetailService getFinanceSettleAccountsDetailService() {
        return financeSettleAccountsDetailService;
    }

    public void setFinanceSettleAccountsDetailService(FinanceSettleAccountsDetailService financeSettleAccountsDetailService) {
        this.financeSettleAccountsDetailService = financeSettleAccountsDetailService;
    }

    public void start() throws Exception {
        List<FinanceSettleAccountsDetail> financeSettleAccountsDetails = financeSettleAccountsDetailService.listAll();
        assert(financeSettleAccountsDetails != null);
        assert(financeSettleAccountsDetails.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(financeSettleAccountsDetails));
    }
}
