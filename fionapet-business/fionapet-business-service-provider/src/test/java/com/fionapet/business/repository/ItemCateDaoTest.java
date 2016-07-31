package com.fionapet.business.repository;

import com.fionapet.business.entity.ItemCate;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 商品服务种类
* Created by tom on 2016-07-31 16:42:52.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class ItemCateDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private ItemCateDao itemCateDao;

    @Test
    public void findAll(){
        List<ItemCate> itemCates = itemCateDao.findAllBy();

        Assert.assertNotNull(itemCates);

        Assert.assertEquals(itemCates.size(), 15);
    }
}
