package com.fionapet.business.repository;

import com.fionapet.business.entity.PrescriptionTemplateType;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 处方模版类型
* Created by tom on 2016-07-31 16:42:52.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class PrescriptionTemplateTypeDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private PrescriptionTemplateTypeDao prescriptionTemplateTypeDao;

    @Test
    public void findAll(){
        List<PrescriptionTemplateType> prescriptionTemplateTypes = prescriptionTemplateTypeDao.findAllBy();

        Assert.assertNotNull(prescriptionTemplateTypes);

        Assert.assertEquals(prescriptionTemplateTypes.size(), 0);
    }
}
