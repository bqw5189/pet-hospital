package com.fionapet.business.repository;

import com.fionapet.business.entity.MedicVedioExam;
import org.junit.Assert;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 医生影像样例
 * Created by tom on 16/6/21.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class TestMedicVedioExamDao extends SpringTransactionalTestCase {
    private static final Logger LOGGER = LoggerFactory.getLogger(TestMedicVedioExamDao.class);
    @Autowired
    private MedicVedioExamDao medicVedioExamDao;


    @Test
    public void findAll() {
        List<MedicVedioExam> medicVedioExams = medicVedioExamDao.findAllByOrderByCreateDateAsc();

        Assert.assertNotNull(medicVedioExams);
        Assert.assertEquals(medicVedioExams.size(), 0);
    }

}
