package com.fionapet.business.repository;

import com.fionapet.business.entity.WarehouseOutrecordDetail;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 出库记录明细
* Created by tom on 2016-07-18 11:09:24.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class WarehouseOutrecordDetailDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private WarehouseOutrecordDetailDao warehouseOutrecordDetailDao;

    @Test
    public void findAll(){
        List<WarehouseOutrecordDetail> warehouseOutrecordDetails = warehouseOutrecordDetailDao.findAllBy();

        Assert.assertNotNull(warehouseOutrecordDetails);

        Assert.assertEquals(warehouseOutrecordDetails.size(), 0);
    }
}
