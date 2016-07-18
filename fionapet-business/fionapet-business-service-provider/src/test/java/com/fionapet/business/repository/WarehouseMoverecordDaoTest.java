package com.fionapet.business.repository;

import com.fionapet.business.entity.WarehouseMoverecord;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 移库记录
* Created by tom on 2016-07-18 11:00:45.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class WarehouseMoverecordDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private WarehouseMoverecordDao warehouseMoverecordDao;

    @Test
    public void findAll(){
        List<WarehouseMoverecord> warehouseMoverecords = warehouseMoverecordDao.findAllBy();

        Assert.assertNotNull(warehouseMoverecords);

        Assert.assertEquals(warehouseMoverecords.size(), 0);
    }
}
