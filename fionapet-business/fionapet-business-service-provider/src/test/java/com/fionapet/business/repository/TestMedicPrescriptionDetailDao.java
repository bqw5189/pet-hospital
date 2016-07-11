package com.fionapet.business.repository;

import com.fionapet.business.entity.MedicPrescriptionDetail;
import org.junit.Assert;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 医生处方明细
 * Created by tom on 16/6/21.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class TestMedicPrescriptionDetailDao extends SpringTransactionalTestCase {
    private static final Logger LOGGER = LoggerFactory.getLogger(TestMedicPrescriptionDetailDao.class);
    @Autowired
    private MedicPrescriptionDetailDao medicPrescriptionDetailDao;


    @Test
    public void findAll() {
        List<MedicPrescriptionDetail> medicPrescriptionDetails = medicPrescriptionDetailDao.findAllByOrderByCreateDateAsc();

        Assert.assertNotNull(medicPrescriptionDetails);
        Assert.assertEquals(medicPrescriptionDetails.size(), 0);
    }

}
