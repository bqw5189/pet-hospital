package com.fionapet.business.repository;

import com.fionapet.business.entity.DictType;
import org.junit.Assert;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 字典类型
 * Created by tom on 16/6/21.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class TestDictTypeDao extends SpringTransactionalTestCase {
    private static final Logger LOGGER = LoggerFactory.getLogger(TestDictTypeDao.class);
    @Autowired
    private DictTypeDao dictTypeDao;


    @Test
    public void findAll() {
        List<DictType> dictTypes = dictTypeDao.findAllByOrderByCreateDateAsc();

        Assert.assertNotNull(dictTypes);
        Assert.assertEquals(dictTypes.size(), 21);
    }

}
