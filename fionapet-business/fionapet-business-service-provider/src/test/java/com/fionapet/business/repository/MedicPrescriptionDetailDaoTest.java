package com.fionapet.business.repository;

import com.fionapet.business.entity.MedicPrescriptionDetail;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 医生处方明细
* Created by tom on 2016-07-18 11:09:23.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class MedicPrescriptionDetailDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private MedicPrescriptionDetailDao medicPrescriptionDetailDao;

    @Test
    public void findAll(){
        List<MedicPrescriptionDetail> medicPrescriptionDetails = medicPrescriptionDetailDao.findAllBy();

        Assert.assertNotNull(medicPrescriptionDetails);

        Assert.assertEquals(medicPrescriptionDetails.size(), 0);
    }
}
