package com.fionapet.business.repository;

import com.fionapet.business.entity.BusinesCate;
import org.junit.Assert;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * Created by tom on 16/6/21.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class TestBusinesCateRaceDao extends SpringTransactionalTestCase {
    private static final Logger LOGGER = LoggerFactory.getLogger(TestBusinesCateRaceDao.class);
    @Autowired
    private BusinesCateDao businesCateDao;


    @Test
    public void findAll() {
        List<BusinesCate> businesCates = businesCateDao.findAllByOrderByCreateDateAsc();

        Assert.assertNotNull(businesCates);
        Assert.assertEquals(businesCates.size(),12);
    }

    @Test
    public void curd(){
        String name = "宠物药品1";
        String userId = "fc5db3b3-4063-4a12-a511-880ba19e4b58";
        BusinesCate businesCate = businesCateDao.findByCateName(name);

        Assert.assertNull(businesCate);

        businesCate = new BusinesCate();
        businesCate.setCateName("宠物药品A");
        businesCate.setCreateUserId(userId);
        businesCate.setUpdateUserId(userId);

        businesCateDao.save(businesCate);

        Assert.assertNotNull(businesCate.getUuid());

        businesCate.setCateName("宠物药品A");

        businesCateDao.save(businesCate);

        businesCate = businesCateDao.findByCateName(name);

        Assert.assertNull(businesCate);

        businesCate = businesCateDao.findByCateName("宠物药品A");

        businesCateDao.delete(businesCate);

        businesCate = businesCateDao.findByCateName("宠物药品A");

        Assert.assertNull(businesCate);
    }
}
