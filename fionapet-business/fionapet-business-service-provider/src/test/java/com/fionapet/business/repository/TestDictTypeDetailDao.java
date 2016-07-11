package com.fionapet.business.repository;

import com.fionapet.business.entity.DictTypeDetail;
import org.junit.Assert;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 宠物字典类型明细
 * Created by tom on 16/6/21.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class TestDictTypeDetailDao extends SpringTransactionalTestCase {
    private static final Logger LOGGER = LoggerFactory.getLogger(TestDictTypeDetailDao.class);
    @Autowired
    private DictTypeDetailDao dictTypeDetailDao;


    @Test
    public void findAll() {
        List<DictTypeDetail> dictTypeDetails = dictTypeDetailDao.findAllByOrderByCreateDateAsc();

        Assert.assertNotNull(dictTypeDetails);
        Assert.assertEquals(dictTypeDetails.size(), 65);
    }

}
