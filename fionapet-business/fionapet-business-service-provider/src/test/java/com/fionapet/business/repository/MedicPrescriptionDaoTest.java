package com.fionapet.business.repository;

import com.fionapet.business.entity.MedicPrescription;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 医生处方明细
* Created by tom on 2016-07-18 11:00:46.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class MedicPrescriptionDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private MedicPrescriptionDao medicPrescriptionDao;

    @Test
    public void findAll(){
        List<MedicPrescription> medicPrescriptions = medicPrescriptionDao.findAllBy();

        Assert.assertNotNull(medicPrescriptions);

        Assert.assertEquals(medicPrescriptions.size(), 0);
    }
}
