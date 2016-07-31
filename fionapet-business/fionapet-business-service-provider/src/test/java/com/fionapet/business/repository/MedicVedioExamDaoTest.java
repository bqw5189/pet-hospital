package com.fionapet.business.repository;

import com.fionapet.business.entity.MedicVedioExam;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 医生影像样例
* Created by tom on 2016-07-31 16:36:25.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class MedicVedioExamDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private MedicVedioExamDao medicVedioExamDao;

    @Test
    public void findAll(){
        List<MedicVedioExam> medicVedioExams = medicVedioExamDao.findAllBy();

        Assert.assertNotNull(medicVedioExams);

        Assert.assertEquals(medicVedioExams.size(), 0);
    }
}
