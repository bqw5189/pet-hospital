package com.fionapet.business.repository;

import com.fionapet.business.entity.PetSmallRace;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 宠物品种
* Created by tom on 2016-07-19 13:15:47.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class PetSmallRaceDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private PetSmallRaceDao petSmallRaceDao;

    @Test
    public void findAll(){
        List<PetSmallRace> petSmallRaces = petSmallRaceDao.findAllBy();

        Assert.assertNotNull(petSmallRaces);

        Assert.assertEquals(petSmallRaces.size(), 26);
    }
}
