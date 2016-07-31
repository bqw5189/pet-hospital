package com.fionapet.business.repository;

import com.fionapet.business.entity.PrescriptionTemplate;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 处方模版
* Created by tom on 2016-07-31 16:42:52.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class PrescriptionTemplateDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private PrescriptionTemplateDao prescriptionTemplateDao;

    @Test
    public void findAll(){
        List<PrescriptionTemplate> prescriptionTemplates = prescriptionTemplateDao.findAllBy();

        Assert.assertNotNull(prescriptionTemplates);

        Assert.assertEquals(prescriptionTemplates.size(), 0);
    }
}
