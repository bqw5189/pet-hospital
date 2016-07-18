package com.fionapet.business.repository;

import com.fionapet.business.entity.WarehouseOutrecord;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 出库记录
* Created by tom on 2016-07-18 11:09:24.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class WarehouseOutrecordDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private WarehouseOutrecordDao warehouseOutrecordDao;

    @Test
    public void findAll(){
        List<WarehouseOutrecord> warehouseOutrecords = warehouseOutrecordDao.findAllBy();

        Assert.assertNotNull(warehouseOutrecords);

        Assert.assertEquals(warehouseOutrecords.size(), 0);
    }
}
