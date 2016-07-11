package com.fionapet.business.repository;

import com.fionapet.business.entity.ItemDiscountRate;
import org.junit.Assert;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 业务类型打折率
 * Created by tom on 16/6/21.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class TestItemDiscountRateDao extends SpringTransactionalTestCase {
    private static final Logger LOGGER = LoggerFactory.getLogger(TestItemDiscountRateDao.class);
    @Autowired
    private ItemDiscountRateDao itemDiscountRateDao;


    @Test
    public void findAll() {
        List<ItemDiscountRate> itemDiscountRates = itemDiscountRateDao.findAllByOrderByCreateDateAsc();

        Assert.assertNotNull(itemDiscountRates);
        Assert.assertEquals(itemDiscountRates.size(), 0);
    }

}
