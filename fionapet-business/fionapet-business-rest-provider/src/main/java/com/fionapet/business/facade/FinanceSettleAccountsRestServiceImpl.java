package com.fionapet.business.facade;

import com.fionapet.business.entity.FinanceSettleAccounts;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.FinanceSettleAccountsService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 资金账号表
* Created by tom on 2016-07-25 09:32:33.
 */
public class FinanceSettleAccountsRestServiceImpl extends RestServiceBase<FinanceSettleAccounts> implements FinanceSettleAccountsRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(FinanceSettleAccountsRestServiceImpl.class);

    private FinanceSettleAccountsService financeSettleAccountsService;

    public FinanceSettleAccountsService getFinanceSettleAccountsService() {
        return financeSettleAccountsService;
    }

    public void setFinanceSettleAccountsService(FinanceSettleAccountsService financeSettleAccountsService) {
        this.financeSettleAccountsService = financeSettleAccountsService;
    }

    @Override
    public CURDService<FinanceSettleAccounts> getService() {
        return financeSettleAccountsService;
    }

}
