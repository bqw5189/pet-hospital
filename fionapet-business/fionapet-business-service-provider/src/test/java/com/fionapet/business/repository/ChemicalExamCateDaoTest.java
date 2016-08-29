package com.fionapet.business.repository;

import com.alibaba.fastjson.JSON;
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
* Created by tom on 2016-07-31 16:42:53.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class ChemicalExamCateDaoTest extends SpringTransactionalTestCase {
    private static final Logger LOGGER = LoggerFactory.getLogger(ChemicalExamCateDaoTest.class);

    @Autowired
    private ChemicalExamCateDao chemicalExamCateDao;

    @Test
    public void findAll(){
        List<ChemicalExamCate> chemicalExamCates = chemicalExamCateDao.findAllBy();

        Assert.assertNotNull(chemicalExamCates);

        Assert.assertEquals(chemicalExamCates.size(), 12);

        for (ChemicalExamCate chemicalExamCate: chemicalExamCates){
            LOGGER.info("parent:{}, text:{}", chemicalExamCate.getParent(), chemicalExamCate.getText());
        }

        LOGGER.info("chemicalExamCates:{}", JSON.toJSON(chemicalExamCates));
    }

    @Test
    public void findByParentObjectId(){
        List<ChemicalExamCate> chemicalExamCates = chemicalExamCateDao.findByParentObjectCateNo("C0009");
        Assert.assertEquals(chemicalExamCates.size(), 3);
    }
    @Test
    public void findByParentObjectIdIsNull(){
        List<ChemicalExamCate> chemicalExamCates = chemicalExamCateDao.findByParentObjectCateNoIsNull();
        Assert.assertEquals(chemicalExamCates.size(), 9);
    }


}
