package com.fionapet.business.repository;

import com.fionapet.business.entity.WarehouseInrecordDetail;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 进库记录明细
* Created by tom on 2016-07-18 11:09:23.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class WarehouseInrecordDetailDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private WarehouseInrecordDetailDao warehouseInrecordDetailDao;

    @Test
    public void findAll(){
        List<WarehouseInrecordDetail> warehouseInrecordDetails = warehouseInrecordDetailDao.findAllBy();

        Assert.assertNotNull(warehouseInrecordDetails);

        Assert.assertEquals(warehouseInrecordDetails.size(), 0);
    }
}
