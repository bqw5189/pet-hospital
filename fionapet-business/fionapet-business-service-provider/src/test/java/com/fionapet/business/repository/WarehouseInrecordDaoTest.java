package com.fionapet.business.repository;

import com.fionapet.business.entity.WarehouseInrecord;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 进库记录
* Created by tom on 2016-07-18 11:09:23.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class WarehouseInrecordDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private WarehouseInrecordDao warehouseInrecordDao;

    @Test
    public void findAll(){
        List<WarehouseInrecord> warehouseInrecords = warehouseInrecordDao.findAllBy();

        Assert.assertNotNull(warehouseInrecords);

        Assert.assertEquals(warehouseInrecords.size(), 0);
    }
}
