package com.fionapet.business.facade;

import com.fionapet.business.entity.ExpensesCate;
import com.fionapet.business.service.CURDService;
import com.fionapet.business.service.ExpensesCateService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 费用类型
 * User: baiqw
 * Date: 14-12-9
 * Time: 下午3:45
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
