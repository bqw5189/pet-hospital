package com.fionapet.business.repository;

import com.fionapet.business.entity.FinanceSettleAccountsDetail;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 资金账户明细表
* Created by tom on 2016-07-25 09:32:33.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class FinanceSettleAccountsDetailDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private FinanceSettleAccountsDetailDao financeSettleAccountsDetailDao;

    @Test
    public void findAll(){
        List<FinanceSettleAccountsDetail> financeSettleAccountsDetails = financeSettleAccountsDetailDao.findAllBy();

        Assert.assertNotNull(financeSettleAccountsDetails);

        Assert.assertEquals(financeSettleAccountsDetails.size(), 0);
    }
}
