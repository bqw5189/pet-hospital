package com.fionapet.business.repository;

import com.fionapet.business.entity.StoreDirectSellDetail;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 仓库直销明细
* Created by tom on 2016-07-18 11:09:25.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class StoreDirectSellDetailDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private StoreDirectSellDetailDao storeDirectSellDetailDao;

    @Test
    public void findAll(){
        List<StoreDirectSellDetail> storeDirectSellDetails = storeDirectSellDetailDao.findAllBy();

        Assert.assertNotNull(storeDirectSellDetails);

        Assert.assertEquals(storeDirectSellDetails.size(), 0);
    }
}
