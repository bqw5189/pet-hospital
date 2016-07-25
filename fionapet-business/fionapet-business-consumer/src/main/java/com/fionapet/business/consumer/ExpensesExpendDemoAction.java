package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.ExpensesExpend;
import com.fionapet.business.service.ExpensesExpendService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-25 09:32:34.
 */
public class ExpensesExpendDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(ExpensesExpendDemoAction.class);
    private ExpensesExpendService expensesExpendService;

    public ExpensesExpendService getExpensesExpendService() {
        return expensesExpendService;
    }

    public void setExpensesExpendService(ExpensesExpendService expensesExpendService) {
        this.expensesExpendService = expensesExpendService;
    }

    public void start() throws Exception {
        List<ExpensesExpend> expensesExpends = expensesExpendService.listAll();
        assert(expensesExpends != null);
        assert(expensesExpends.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(expensesExpends));
    }
}
