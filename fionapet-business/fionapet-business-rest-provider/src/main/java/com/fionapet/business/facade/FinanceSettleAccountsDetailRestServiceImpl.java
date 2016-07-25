package com.fionapet.business.facade;

import com.fionapet.business.entity.FinanceSettleAccountsDetail;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.FinanceSettleAccountsDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 资金账户明细表
* Created by tom on 2016-07-25 09:32:33.
 */
public class FinanceSettleAccountsDetailRestServiceImpl extends RestServiceBase<FinanceSettleAccountsDetail> implements FinanceSettleAccountsDetailRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(FinanceSettleAccountsDetailRestServiceImpl.class);

    private FinanceSettleAccountsDetailService financeSettleAccountsDetailService;

    public FinanceSettleAccountsDetailService getFinanceSettleAccountsDetailService() {
        return financeSettleAccountsDetailService;
    }

    public void setFinanceSettleAccountsDetailService(FinanceSettleAccountsDetailService financeSettleAccountsDetailService) {
        this.financeSettleAccountsDetailService = financeSettleAccountsDetailService;
    }

    @Override
    public CURDService<FinanceSettleAccountsDetail> getService() {
        return financeSettleAccountsDetailService;
    }

}
