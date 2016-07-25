package com.fionapet.business.repository;

import com.fionapet.business.entity.ItemCountChangeReason;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 种类数量更改原因表
* Created by tom on 2016-07-25 09:32:30.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class ItemCountChangeReasonDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private ItemCountChangeReasonDao itemCountChangeReasonDao;

    @Test
    public void findAll(){
        List<ItemCountChangeReason> itemCountChangeReasons = itemCountChangeReasonDao.findAllBy();

        Assert.assertNotNull(itemCountChangeReasons);

        Assert.assertEquals(itemCountChangeReasons.size(), 0);
    }
}
