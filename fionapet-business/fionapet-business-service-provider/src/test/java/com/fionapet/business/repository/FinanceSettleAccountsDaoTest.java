package com.fionapet.business.repository;

import com.fionapet.business.entity.FinanceSettleAccounts;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 资金账号表
* Created by tom on 2016-07-25 09:32:33.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class FinanceSettleAccountsDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private FinanceSettleAccountsDao financeSettleAccountsDao;

    @Test
    public void findAll(){
        List<FinanceSettleAccounts> financeSettleAccountss = financeSettleAccountsDao.findAllBy();

        Assert.assertNotNull(financeSettleAccountss);

        Assert.assertEquals(financeSettleAccountss.size(), 0);
    }
}
