package com.fionapet.business.repository;

import com.fionapet.business.entity.ItemtypeSupplies;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 供应量表
* Created by tom on 2016-07-25 09:32:33.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class ItemtypeSuppliesDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private ItemtypeSuppliesDao itemtypeSuppliesDao;

    @Test
    public void findAll(){
        List<ItemtypeSupplies> itemtypeSuppliess = itemtypeSuppliesDao.findAllBy();

        Assert.assertNotNull(itemtypeSuppliess);

        Assert.assertEquals(itemtypeSuppliess.size(), 0);
    }
}
