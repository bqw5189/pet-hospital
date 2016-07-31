package com.fionapet.business.service;

import com.fionapet.business.entity.ExpensesCate;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.ExpensesCateDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  费用类型
* Created by tom on 2016-07-31 16:42:51.
 */
public class ExpensesCateServiceImpl extends CURDServiceBase<ExpensesCate> implements ExpensesCateService {
    @Autowired
    private ExpensesCateDao expensesCateDao;

    @Override
    public DaoBase<ExpensesCate> getDao() {
        return expensesCateDao;
    }
}
