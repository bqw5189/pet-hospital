package com.fionapet.business.repository;

import com.fionapet.business.entity.ItemSingleDetail;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 类型化验实例明细表
* Created by tom on 2016-07-25 09:32:32.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class ItemSingleDetailDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private ItemSingleDetailDao itemSingleDetailDao;

    @Test
    public void findAll(){
        List<ItemSingleDetail> itemSingleDetails = itemSingleDetailDao.findAllBy();

        Assert.assertNotNull(itemSingleDetails);

        Assert.assertEquals(itemSingleDetails.size(), 0);
    }
}
