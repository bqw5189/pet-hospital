package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.ExpensesCate;
import com.fionapet.business.service.ExpensesCateService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-31 16:42:51.
 */
public class ExpensesCateDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(ExpensesCateDemoAction.class);
    private ExpensesCateService expensesCateService;

    public ExpensesCateService getExpensesCateService() {
        return expensesCateService;
    }

    public void setExpensesCateService(ExpensesCateService expensesCateService) {
        this.expensesCateService = expensesCateService;
    }

    public void start() throws Exception {
        List<ExpensesCate> expensesCates = expensesCateService.listAll();
        assert(expensesCates != null);
        assert(expensesCates.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(expensesCates));
    }
}
