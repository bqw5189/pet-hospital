package com.fionapet.business.repository;

import com.fionapet.business.entity.ItemtypeChemicalexam;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 类型化验实例表
* Created by tom on 2016-07-25 09:32:31.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class ItemtypeChemicalexamDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private ItemtypeChemicalexamDao itemtypeChemicalexamDao;

    @Test
    public void findAll(){
        List<ItemtypeChemicalexam> itemtypeChemicalexams = itemtypeChemicalexamDao.findAllBy();

        Assert.assertNotNull(itemtypeChemicalexams);

        Assert.assertEquals(itemtypeChemicalexams.size(), 0);
    }
}
