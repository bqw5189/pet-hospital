package com.fionapet.business.repository;

import com.fionapet.business.entity.InHospitalPrescriptionDetail;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 住院处方明细
* Created by tom on 2016-07-18 15:37:44.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class InHospitalPrescriptionDetailDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private InHospitalPrescriptionDetailDao inHospitalPrescriptionDetailDao;

    @Test
    public void findAll(){
        List<InHospitalPrescriptionDetail> inHospitalPrescriptionDetails = inHospitalPrescriptionDetailDao.findAllBy();

        Assert.assertNotNull(inHospitalPrescriptionDetails);

        Assert.assertEquals(inHospitalPrescriptionDetails.size(), 0);
    }
}
