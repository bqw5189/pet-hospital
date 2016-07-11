package com.fionapet.business.repository;

import com.fionapet.business.entity.MedicPrescription;
import org.junit.Assert;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 医生开处方
 * Created by tom on 16/6/21.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class TestMedicPrescriptionDao extends SpringTransactionalTestCase {
    private static final Logger LOGGER = LoggerFactory.getLogger(TestMedicPrescriptionDao.class);
    @Autowired
    private MedicPrescriptionDao medicPrescriptionDao;


    @Test
    public void findAll() {
        List<MedicPrescription> medicPrescriptions = medicPrescriptionDao.findAllByOrderByCreateDateAsc();

        Assert.assertNotNull(medicPrescriptions);
        Assert.assertEquals(medicPrescriptions.size(), 0);
    }

}
