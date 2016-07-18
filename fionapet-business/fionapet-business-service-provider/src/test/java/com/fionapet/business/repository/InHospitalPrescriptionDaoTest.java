package com.fionapet.business.repository;

import com.fionapet.business.entity.InHospitalPrescription;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 住院处方
* Created by tom on 2016-07-18 15:37:44.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class InHospitalPrescriptionDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private InHospitalPrescriptionDao inHospitalPrescriptionDao;

    @Test
    public void findAll(){
        List<InHospitalPrescription> inHospitalPrescriptions = inHospitalPrescriptionDao.findAllBy();

        Assert.assertNotNull(inHospitalPrescriptions);

        Assert.assertEquals(inHospitalPrescriptions.size(), 0);
    }
}
