package com.fionapet.business.repository;

import com.fionapet.business.entity.Pet;
import com.fionapet.business.entity.PetSmallRace;
import com.fionapet.business.entity.UserDictDetail;
import org.junit.Assert;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.Date;
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
    @Autowired
    private UserDictDetailDao userDictDetailDao;
    @Autowired
    private PetSmallRaceDao petSmallRaceDao;

    @Test
    public void curd(){
        Pet pet = new Pet();
        pet.setPetName("二哈");
        pet.setAge(2);
        pet.setDogBandId("110");
        pet.setGestId("01");
        pet.setGestCode("vip01");
        pet.setGestName("小新");
        pet.setMdicTypeName("院长");
        pet.setPetBirthday(new Date());
        pet.setPetBodyLong(10);
        pet.setPetWeight(2.5f);
        pet.setPetHeight(50);
        pet.setPetSwidth(20);
        pet.setPetCode("CP01");
        pet.setPetHead("头像");
        pet.setPetHeadId("01");

        //品种
        PetSmallRace petSmallRace = petSmallRaceDao.findByType("哈士奇");
        pet.setPetRace(petSmallRace);

        //性别
        UserDictDetail userDictDetail = userDictDetailDao.findByDictDetailCode("DM00003");
        pet.setPetSex(userDictDetail);

        //颜色
        userDictDetail = userDictDetailDao.findByDictDetailCode("DM00005");
        pet.setPetSkinColor(userDictDetail);

        petDao.save(pet);

        Assert.assertNotNull(pet.getId());

        pet = petDao.findOne(pet.getId());

        Assert.assertNotNull(pet);

        LOGGER.info("create pet:{}", pet);

    }

    @Test
    public void findAll(){
        List<Pet> pets = petDao.findAllBy();

        Assert.assertNotNull(pets);

        Assert.assertEquals(pets.size(), 0);
    }
}
