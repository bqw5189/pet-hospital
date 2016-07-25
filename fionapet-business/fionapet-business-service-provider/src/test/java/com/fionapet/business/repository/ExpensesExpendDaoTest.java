package com.fionapet.business.repository;

import com.fionapet.business.entity.ExpensesExpend;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 付出费用表
* Created by tom on 2016-07-25 09:32:34.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class ExpensesExpendDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private ExpensesExpendDao expensesExpendDao;

    @Test
    public void findAll(){
        List<ExpensesExpend> expensesExpends = expensesExpendDao.findAllBy();

        Assert.assertNotNull(expensesExpends);

        Assert.assertEquals(expensesExpends.size(), 0);
    }
}
