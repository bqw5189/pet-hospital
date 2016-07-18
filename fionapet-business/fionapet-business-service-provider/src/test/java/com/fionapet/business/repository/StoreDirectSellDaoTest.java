package com.fionapet.business.repository;

import com.fionapet.business.entity.StoreDirectSell;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 仓库直销主表
* Created by tom on 2016-07-18 11:00:46.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class StoreDirectSellDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private StoreDirectSellDao storeDirectSellDao;

    @Test
    public void findAll(){
        List<StoreDirectSell> storeDirectSells = storeDirectSellDao.findAllBy();

        Assert.assertNotNull(storeDirectSells);

        Assert.assertEquals(storeDirectSells.size(), 0);
    }
}
