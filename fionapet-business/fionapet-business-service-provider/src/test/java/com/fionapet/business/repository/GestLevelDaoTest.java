package com.fionapet.business.repository;

import com.fionapet.business.entity.GestLevel;
import org.dubbo.x.entity.StatusEnum;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 会员等级管理
* Created by tom on 2016-07-31 16:36:25.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class GestLevelDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private GestLevelDao gestLevelDao;

    @Test
    public void findAll(){
        List<GestLevel> gestLevels = gestLevelDao.findAllBy();

        Assert.assertNotNull(gestLevels);

        Assert.assertEquals(gestLevels.size(), 3);
    }

    @Test
    public void findByStatusDictDetailCode(){
        List<GestLevel> gestLevels = gestLevelDao.findByStatusDictDetailCode(StatusEnum.OK.toString());
        Assert.assertNotNull(gestLevels);
        Assert.assertEquals(gestLevels.size(), 1);
    }
}
