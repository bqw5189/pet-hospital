package com.fionapet.business.repository;

import com.fionapet.business.entity.ReturnCommodityDetail;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 返回商品明细
* Created by tom on 2016-07-18 11:09:25.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class ReturnCommodityDetailDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private ReturnCommodityDetailDao returnCommodityDetailDao;

    @Test
    public void findAll(){
        List<ReturnCommodityDetail> returnCommodityDetails = returnCommodityDetailDao.findAllBy();

        Assert.assertNotNull(returnCommodityDetails);

        Assert.assertEquals(returnCommodityDetails.size(), 0);
    }
}
