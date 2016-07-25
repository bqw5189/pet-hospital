package com.fionapet.business.service;

import com.fionapet.business.entity.FinanceSettleAccounts;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.FinanceSettleAccountsDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  资金账号表
* Created by tom on 2016-07-25 09:32:33.
 */
public class FinanceSettleAccountsServiceImpl extends CURDServiceBase<FinanceSettleAccounts> implements FinanceSettleAccountsService {
    @Autowired
    private FinanceSettleAccountsDao financeSettleAccountsDao;

    @Override
    public DaoBase<FinanceSettleAccounts> getDao() {
        return financeSettleAccountsDao;
    }
}
