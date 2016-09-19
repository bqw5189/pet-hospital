package com.fionapet.business.repository;

import com.fionapet.business.entity.PetRace;
import org.codehaus.jackson.JsonFactory;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.ObjectMapper;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.io.IOException;
import java.util.List;

/**
 * 宠物种类
* Created by tom on 2016-07-31 16:42:52.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class PetRaceDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private PetRaceDao petRaceDao;

    @Test
    public void findAll(){
        List<PetRace> petRaces = petRaceDao.findAllBy();

        Assert.assertNotNull(petRaces);

        Assert.assertEquals(petRaces.size(), 6);
        ObjectMapper objectMapper = new ObjectMapper();
        try {
            System.out.println(objectMapper.writeValueAsString(petRaces));
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}
