package com.fionapet.business.repository;

import com.fionapet.business.entity.ChemicalExamCate;
import org.junit.Assert;
import org.junit.Test;
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

    @Autowired
    private ChemicalExamCateDao chemicalExamCateDao;

    @Test
    public void findAll(){
        List<ChemicalExamCate> chemicalExamCates = chemicalExamCateDao.findAllBy();

        Assert.assertNotNull(chemicalExamCates);

        Assert.assertEquals(chemicalExamCates.size(), 12);
    }
}
