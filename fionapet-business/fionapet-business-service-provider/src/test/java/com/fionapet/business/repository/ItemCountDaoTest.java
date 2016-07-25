package com.fionapet.business.repository;

import com.fionapet.business.entity.ItemCount;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 种类数量更改原因表
* Created by tom on 2016-07-25 09:32:32.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class ItemCountDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private ItemCountDao itemCountDao;

    @Test
    public void findAll(){
        List<ItemCount> itemCounts = itemCountDao.findAllBy();

        Assert.assertNotNull(itemCounts);

        Assert.assertEquals(itemCounts.size(), 0);
    }
}
