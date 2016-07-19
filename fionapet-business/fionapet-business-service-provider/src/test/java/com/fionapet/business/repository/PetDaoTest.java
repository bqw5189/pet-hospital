package com.fionapet.business.repository;

import com.fionapet.business.entity.Pet;
import com.fionapet.business.test.DataBuilder;
import com.fionapet.business.test.PetData;
import org.junit.Assert;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 宠物
* Created by tom on 2016-07-19 10:31:06.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class PetDaoTest extends SpringTransactionalTestCase {

    private static final Logger LOGGER = LoggerFactory.getLogger(PetDaoTest.class);
    @Autowired
    private PetDao petDao;

    @Test
//    @Rollback(false)
    public void curd(){
        Pet pet = DataBuilder.data(PetData.class);

        petDao.save(pet);

        Assert.assertNotNull(pet.getId());

        LOGGER.info("create pet:{}", pet);


        pet = petDao.findOne(pet.getId());

        Assert.assertNotNull(pet);

        LOGGER.info("find pet:{}", pet);



    }

    @Test
    public void findAll(){
        List<Pet> pets = petDao.findAllBy();

        Assert.assertNotNull(pets);

        Assert.assertEquals(pets.size(), 0);
    }
}
