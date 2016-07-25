package com.fionapet.business.repository;

import com.fionapet.business.entity.CheckWarehouseDetail;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 检查仓库明细表
* Created by tom on 2016-07-25 09:32:33.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class CheckWarehouseDetailDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private CheckWarehouseDetailDao checkWarehouseDetailDao;

    @Test
    public void findAll(){
        List<CheckWarehouseDetail> checkWarehouseDetails = checkWarehouseDetailDao.findAllBy();

        Assert.assertNotNull(checkWarehouseDetails);

        Assert.assertEquals(checkWarehouseDetails.size(), 0);
    }
}
