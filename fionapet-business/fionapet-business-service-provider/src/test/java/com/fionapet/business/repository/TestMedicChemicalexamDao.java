package com.fionapet.business.repository;

import com.fionapet.business.entity.MedicChemicalexam;
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
public class TestMedicChemicalexamDao extends SpringTransactionalTestCase {
    private static final Logger LOGGER = LoggerFactory.getLogger(TestMedicChemicalexamDao.class);
    @Autowired
    private MedicChemicalexamDao medicChemicalexamDao;


    @Test
    public void findAll() {
        List<MedicChemicalexam> medicChemicalexams = medicChemicalexamDao.findAllByOrderByCreateDateAsc();

        Assert.assertNotNull(medicChemicalexams);
        Assert.assertEquals(medicChemicalexams.size(), 0);
    }

}
