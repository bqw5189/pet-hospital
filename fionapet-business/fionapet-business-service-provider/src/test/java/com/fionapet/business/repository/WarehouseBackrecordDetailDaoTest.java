package com.fionapet.business.repository;

import com.fionapet.business.entity.WarehouseBackrecordDetail;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 退回记录明细
* Created by tom on 2016-07-18 11:09:23.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class WarehouseBackrecordDetailDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private WarehouseBackrecordDetailDao warehouseBackrecordDetailDao;

    @Test
    public void findAll(){
        List<WarehouseBackrecordDetail> warehouseBackrecordDetails = warehouseBackrecordDetailDao.findAllBy();

        Assert.assertNotNull(warehouseBackrecordDetails);

        Assert.assertEquals(warehouseBackrecordDetails.size(), 0);
    }
}
