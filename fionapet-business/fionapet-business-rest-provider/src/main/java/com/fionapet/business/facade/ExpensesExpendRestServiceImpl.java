package com.fionapet.business.facade;

import com.fionapet.business.entity.ExpensesExpend;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.ExpensesExpendService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 付出费用表
* Created by tom on 2016-07-25 09:32:34.
 */
public class ExpensesExpendRestServiceImpl extends RestServiceBase<ExpensesExpend> implements ExpensesExpendRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(ExpensesExpendRestServiceImpl.class);

    private ExpensesExpendService expensesExpendService;

    public ExpensesExpendService getExpensesExpendService() {
        return expensesExpendService;
    }

    public void setExpensesExpendService(ExpensesExpendService expensesExpendService) {
        this.expensesExpendService = expensesExpendService;
    }

    @Override
    public CURDService<ExpensesExpend> getService() {
        return expensesExpendService;
    }

}
