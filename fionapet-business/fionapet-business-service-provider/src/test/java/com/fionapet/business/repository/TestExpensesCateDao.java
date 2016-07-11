package com.fionapet.business.repository;

import com.fionapet.business.entity.ExpensesCate;
import org.junit.Assert;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 费用类型
 * Created by tom on 16/6/21.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class TestExpensesCateDao extends SpringTransactionalTestCase {
    private static final Logger LOGGER = LoggerFactory.getLogger(TestExpensesCateDao.class);
    @Autowired
    private ExpensesCateDao expensesCateDao;


    @Test
    public void findAll() {
        List<ExpensesCate> expensesCates = expensesCateDao.findAllByOrderByCreateDateAsc();

        Assert.assertNotNull(expensesCates);
        Assert.assertEquals(expensesCates.size(), 21);
    }

}
