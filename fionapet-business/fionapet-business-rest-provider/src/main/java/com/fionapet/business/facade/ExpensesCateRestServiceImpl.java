package com.fionapet.business.facade;

import com.fionapet.business.entity.ExpensesCate;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.ExpensesCateService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 费用类型
* Created by tom on 2016-07-31 16:42:51.
 */
public class ExpensesCateRestServiceImpl extends RestServiceBase<ExpensesCate> implements ExpensesCateRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(ExpensesCateRestServiceImpl.class);

    private ExpensesCateService expensesCateService;

    public ExpensesCateService getExpensesCateService() {
        return expensesCateService;
    }

    public void setExpensesCateService(ExpensesCateService expensesCateService) {
        this.expensesCateService = expensesCateService;
    }

    @Override
    public CURDService<ExpensesCate> getService() {
        return expensesCateService;
    }

}
