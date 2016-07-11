package com.fionapet.business.repository;

import com.fionapet.business.entity.MedicChemicalExamDetail;
import org.junit.Assert;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 化验单明细
 * Created by tom on 16/6/21.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class TestMedicChemicalExamDetailDao extends SpringTransactionalTestCase {
    private static final Logger LOGGER = LoggerFactory.getLogger(TestMedicChemicalExamDetailDao.class);
    @Autowired
    private MedicChemicalExamDetailDao medicChemicalExamDetailDao;


    @Test
    public void findAll() {
        List<MedicChemicalExamDetail> medicChemicalExamDetails = medicChemicalExamDetailDao.findAllByOrderByCreateDateAsc();

        Assert.assertNotNull(medicChemicalExamDetails);
        Assert.assertEquals(medicChemicalExamDetails.size(), 0);
    }

}
