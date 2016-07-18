package com.fionapet.business.repository;

import com.fionapet.business.entity.WarehouseInventory;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 仓库存货清单
* Created by tom on 2016-07-18 11:00:45.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class WarehouseInventoryDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private WarehouseInventoryDao warehouseInventoryDao;

    @Test
    public void findAll(){
        List<WarehouseInventory> warehouseInventorys = warehouseInventoryDao.findAllBy();

        Assert.assertNotNull(warehouseInventorys);

        Assert.assertEquals(warehouseInventorys.size(), 0);
    }
}
