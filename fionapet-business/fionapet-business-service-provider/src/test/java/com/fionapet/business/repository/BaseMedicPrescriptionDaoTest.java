package com.fionapet.business.repository;

import com.fionapet.business.entity.BaseMedicPrescription;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 处方
* Created by tom on 2016-07-18 15:56:24.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class BaseMedicPrescriptionDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private BaseMedicPrescriptionDao baseMedicPrescriptionDao;

    @Test
    public void findAll(){
        List<BaseMedicPrescription> baseMedicPrescriptions = baseMedicPrescriptionDao.findAllBy();

        Assert.assertNotNull(baseMedicPrescriptions);

        Assert.assertEquals(baseMedicPrescriptions.size(), 0);
    }
}
