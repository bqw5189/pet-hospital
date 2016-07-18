package com.fionapet.business.repository;

import com.fionapet.business.entity.WarehouseBackrecord;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 退回记录
* Created by tom on 2016-07-18 11:00:46.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class WarehouseBackrecordDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private WarehouseBackrecordDao warehouseBackrecordDao;

    @Test
    public void findAll(){
        List<WarehouseBackrecord> warehouseBackrecords = warehouseBackrecordDao.findAllBy();

        Assert.assertNotNull(warehouseBackrecords);

        Assert.assertEquals(warehouseBackrecords.size(), 0);
    }
}
