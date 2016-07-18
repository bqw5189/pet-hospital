package com.fionapet.business.repository;

import com.fionapet.business.entity.BaseMedicPrescriptionDetail;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 处方明细
* Created by tom on 2016-07-18 15:56:23.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class BaseMedicPrescriptionDetailDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private BaseMedicPrescriptionDetailDao baseMedicPrescriptionDetailDao;

    @Test
    public void findAll(){
        List<BaseMedicPrescriptionDetail> baseMedicPrescriptionDetails = baseMedicPrescriptionDetailDao.findAllBy();

        Assert.assertNotNull(baseMedicPrescriptionDetails);

        Assert.assertEquals(baseMedicPrescriptionDetails.size(), 0);
    }
}
