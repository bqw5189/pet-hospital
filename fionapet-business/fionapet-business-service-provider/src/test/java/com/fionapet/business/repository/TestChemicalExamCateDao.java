package com.fionapet.business.repository;

import com.fionapet.business.entity.ChemicalExamCate;
import org.junit.Assert;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 化验样例类型
 * Created by tom on 16/6/21.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class TestChemicalExamCateDao extends SpringTransactionalTestCase {
    private static final Logger LOGGER = LoggerFactory.getLogger(TestChemicalExamCateDao.class);
    @Autowired
    private ChemicalExamCateDao chemicalExamCateDao;


    @Test
    public void findAll() {
        List<ChemicalExamCate> chemicalExamCates = chemicalExamCateDao.findAllByOrderByCreateDateAsc();

        Assert.assertNotNull(chemicalExamCates);
        Assert.assertEquals(chemicalExamCates.size(), 12);
    }

}
