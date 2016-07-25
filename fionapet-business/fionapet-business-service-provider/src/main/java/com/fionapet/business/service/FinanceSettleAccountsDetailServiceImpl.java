package com.fionapet.business.service;

import com.fionapet.business.entity.FinanceSettleAccountsDetail;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.FinanceSettleAccountsDetailDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  资金账户明细表
* Created by tom on 2016-07-25 09:32:33.
 */
public class FinanceSettleAccountsDetailServiceImpl extends CURDServiceBase<FinanceSettleAccountsDetail> implements FinanceSettleAccountsDetailService {
    @Autowired
    private FinanceSettleAccountsDetailDao financeSettleAccountsDetailDao;

    @Override
    public DaoBase<FinanceSettleAccountsDetail> getDao() {
        return financeSettleAccountsDetailDao;
    }
}
