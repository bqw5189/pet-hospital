package com.fionapet.business.repository;

import com.fionapet.business.entity.WarehouseMoverecordDetail;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 移库记录明细
* Created by tom on 2016-07-18 11:09:25.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class WarehouseMoverecordDetailDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private WarehouseMoverecordDetailDao warehouseMoverecordDetailDao;

    @Test
    public void findAll(){
        List<WarehouseMoverecordDetail> warehouseMoverecordDetails = warehouseMoverecordDetailDao.findAllBy();

        Assert.assertNotNull(warehouseMoverecordDetails);

        Assert.assertEquals(warehouseMoverecordDetails.size(), 0);
    }
}
