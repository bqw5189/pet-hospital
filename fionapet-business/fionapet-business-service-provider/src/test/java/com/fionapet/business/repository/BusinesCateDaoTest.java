package com.fionapet.business.repository;

import com.fionapet.business.entity.BusinesCate;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 业务类型表
* Created by tom on 2016-07-31 16:36:25.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class BusinesCateDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private BusinesCateDao businesCateDao;

    @Test
    public void findAll(){
        List<BusinesCate> businesCates = businesCateDao.findAllBy();

        Assert.assertNotNull(businesCates);

        Assert.assertEquals(businesCates.size(), 12);
    }
}
