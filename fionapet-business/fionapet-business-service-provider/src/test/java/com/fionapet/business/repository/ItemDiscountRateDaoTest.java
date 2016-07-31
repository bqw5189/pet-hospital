package com.fionapet.business.repository;

import com.fionapet.business.entity.ItemDiscountRate;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 业务类型打折率
* Created by tom on 2016-07-31 16:42:51.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class ItemDiscountRateDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private ItemDiscountRateDao itemDiscountRateDao;

    @Test
    public void findAll(){
        List<ItemDiscountRate> itemDiscountRates = itemDiscountRateDao.findAllBy();

        Assert.assertNotNull(itemDiscountRates);

        Assert.assertEquals(itemDiscountRates.size(), 0);
    }
}
