package com.fionapet.business.repository;

import com.fionapet.business.entity.PrescriptionTemplateDetail;
import org.junit.Assert;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 处方模版明细
 * Created by tom on 16/6/21.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class TestPrescriptionTemplateDetailDao extends SpringTransactionalTestCase {
    private static final Logger LOGGER = LoggerFactory.getLogger(TestPrescriptionTemplateDetailDao.class);
    @Autowired
    private PrescriptionTemplateDetailDao prescriptionTemplateDetailDao;


    @Test
    public void findAll() {
        List<PrescriptionTemplateDetail> prescriptionTemplateDetails = prescriptionTemplateDetailDao.findAllByOrderByCreateDateAsc();

        Assert.assertNotNull(prescriptionTemplateDetails);
        Assert.assertEquals(prescriptionTemplateDetails.size(), 0);
    }

}
