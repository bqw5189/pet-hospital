package com.fionapet.business.repository;

import com.fionapet.business.entity.Warehouse;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 仓库信息表
* Created by tom on 2016-08-27 10:45:14.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class WarehouseDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private WarehouseDao warehouseDao;

    @Test
    public void findAll(){
        List<Warehouse> warehouses = warehouseDao.findAllBy();

        Assert.assertNotNull(warehouses);

        Assert.assertEquals(warehouses.size(), 0);
    }
}
