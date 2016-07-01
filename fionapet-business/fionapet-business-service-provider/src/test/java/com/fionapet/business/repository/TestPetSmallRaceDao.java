package com.fionapet.business.repository;

import com.fionapet.business.entity.PetRace;
import com.fionapet.business.entity.PetSmallRace;
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
public class TestPetSmallRaceDao extends SpringTransactionalTestCase {
    private static final Logger LOGGER = LoggerFactory.getLogger(TestPetSmallRaceDao.class);
    @Autowired
    private PetSmallRaceDao petSmallRaceDao;


    @Test
    public void findAll() {
        List<PetSmallRace> petSmallRaces = petSmallRaceDao.findAllByOrderByCreateDateAsc();

        Assert.assertNotNull(petSmallRaces);
        Assert.assertEquals(petSmallRaces.size(), 26);

        List<PetSmallRace> petSmallRaceList = petSmallRaceDao.findAllByPetRaceUuid("1aa38af8-efd0-4fbb-8c78-d12d17cc9605");

        Assert.assertNotNull(petSmallRaceList);
        Assert.assertEquals(petSmallRaceList.size(), 9);
    }
}
