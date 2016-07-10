package com.fionapet.business.repository;

import com.fionapet.business.entity.MemberLevel;
import com.fionapet.business.entity.PetRace;
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
public class TestMemberlevelDao extends SpringTransactionalTestCase {
    private static final Logger LOGGER = LoggerFactory.getLogger(TestMemberlevelDao.class);
    @Autowired
    private MemberLevelDao memberLevelDao;


    @Test
    public void findAll() {
        List<MemberLevel> petRaces = memberLevelDao.findAllByOrderByCreateDateAsc();

        Assert.assertNotNull(petRaces);
        Assert.assertEquals(petRaces.size(), 3);
    }

}
