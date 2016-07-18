package com.fionapet.business.repository;

import com.fionapet.business.entity.ReturnCommodity;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 返回商品主表
* Created by tom on 2016-07-18 11:09:23.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class ReturnCommodityDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private ReturnCommodityDao returnCommodityDao;

    @Test
    public void findAll(){
        List<ReturnCommodity> returnCommoditys = returnCommodityDao.findAllBy();

        Assert.assertNotNull(returnCommoditys);

        Assert.assertEquals(returnCommoditys.size(), 0);
    }
}
