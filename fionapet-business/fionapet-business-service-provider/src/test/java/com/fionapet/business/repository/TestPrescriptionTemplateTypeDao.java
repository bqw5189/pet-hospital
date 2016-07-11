package com.fionapet.business.repository;

import com.fionapet.business.entity.PrescriptionTemplateType;
import org.junit.Assert;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 处方模版类型
 * Created by tom on 16/6/21.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class TestPrescriptionTemplateTypeDao extends SpringTransactionalTestCase {
    private static final Logger LOGGER = LoggerFactory.getLogger(TestPrescriptionTemplateTypeDao.class);
    @Autowired
    private PrescriptionTemplateTypeDao prescriptionTemplateTypeDao;


    @Test
    public void findAll() {
        List<PrescriptionTemplateType> prescriptionTemplateTypes = prescriptionTemplateTypeDao.findAllByOrderByCreateDateAsc();

        Assert.assertNotNull(prescriptionTemplateTypes);
        Assert.assertEquals(prescriptionTemplateTypes.size(), 0);
    }

}
