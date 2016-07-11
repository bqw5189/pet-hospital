package com.fionapet.business.repository;

import com.fionapet.business.entity.Pet;
import org.junit.Assert;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 宠物
 * Created by tom on 16/6/21.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class TestPetDao extends SpringTransactionalTestCase {
    private static final Logger LOGGER = LoggerFactory.getLogger(TestPetDao.class);
    @Autowired
    private PetDao petDao;


    @Test
    public void findAll() {
        List<Pet> pets = petDao.findAllByOrderByCreateDateAsc();

        Assert.assertNotNull(pets);
        Assert.assertEquals(pets.size(), 0);
    }

}
