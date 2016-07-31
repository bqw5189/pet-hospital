package com.fionapet.business.repository;

import com.fionapet.business.entity.ItemType;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 商品类型
* Created by tom on 2016-07-31 16:36:26.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class ItemTypeDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private ItemTypeDao itemTypeDao;

    @Test
    public void findAll(){
        List<ItemType> itemTypes = itemTypeDao.findAllBy();

        Assert.assertNotNull(itemTypes);

        Assert.assertEquals(itemTypes.size(), 85);
    }
}
