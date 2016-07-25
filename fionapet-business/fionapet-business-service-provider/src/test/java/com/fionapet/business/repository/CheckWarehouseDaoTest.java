package com.fionapet.business.repository;

import com.fionapet.business.entity.CheckWarehouse;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 仓库检查主表
* Created by tom on 2016-07-25 09:32:33.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class CheckWarehouseDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private CheckWarehouseDao checkWarehouseDao;

    @Test
    public void findAll(){
        List<CheckWarehouse> checkWarehouses = checkWarehouseDao.findAllBy();

        Assert.assertNotNull(checkWarehouses);

        Assert.assertEquals(checkWarehouses.size(), 0);
    }
}
