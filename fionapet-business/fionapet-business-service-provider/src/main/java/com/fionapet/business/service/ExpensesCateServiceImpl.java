package com.fionapet.business.service;

import com.fionapet.business.entity.ExpensesCate;
import com.fionapet.business.repository.DaoBase;
import com.fionapet.business.repository.ExpensesCateDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  费用类型
 * @author baiqw
 */
public class ExpensesCateServiceImpl extends CURDServiceBase<ExpensesCate> implements ExpensesCateService {
    @Autowired
    private ExpensesCateDao expensesCateDao;

    @Override
    public DaoBase<ExpensesCate> getDao() {
        return expensesCateDao;
    }
}
