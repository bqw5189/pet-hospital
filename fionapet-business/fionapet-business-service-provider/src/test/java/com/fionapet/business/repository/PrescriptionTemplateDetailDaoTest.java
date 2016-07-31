package com.fionapet.business.repository;

import com.fionapet.business.entity.PrescriptionTemplateDetail;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 处方模版明细
* Created by tom on 2016-07-31 16:42:51.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class PrescriptionTemplateDetailDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private PrescriptionTemplateDetailDao prescriptionTemplateDetailDao;

    @Test
    public void findAll(){
        List<PrescriptionTemplateDetail> prescriptionTemplateDetails = prescriptionTemplateDetailDao.findAllBy();

        Assert.assertNotNull(prescriptionTemplateDetails);

        Assert.assertEquals(prescriptionTemplateDetails.size(), 0);
    }
}
