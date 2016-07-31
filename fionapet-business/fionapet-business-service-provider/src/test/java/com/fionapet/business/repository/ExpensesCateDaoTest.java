package com.fionapet.business.repository;

import com.fionapet.business.entity.ExpensesCate;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 费用类型
* Created by tom on 2016-07-31 16:42:51.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class ExpensesCateDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private ExpensesCateDao expensesCateDao;

    @Test
    public void findAll(){
        List<ExpensesCate> expensesCates = expensesCateDao.findAllBy();

        Assert.assertNotNull(expensesCates);

        Assert.assertEquals(expensesCates.size(), 21);
    }
}
