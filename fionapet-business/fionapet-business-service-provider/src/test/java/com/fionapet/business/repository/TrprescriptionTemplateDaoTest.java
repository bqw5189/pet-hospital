package com.fionapet.business.repository;

import com.fionapet.business.entity.TrprescriptionTemplate;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 药方模版
* Created by tom on 2016-07-31 16:36:24.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class TrprescriptionTemplateDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private TrprescriptionTemplateDao trprescriptionTemplateDao;

    @Test
    public void findAll(){
        List<TrprescriptionTemplate> trprescriptionTemplates = trprescriptionTemplateDao.findAllBy();

        Assert.assertNotNull(trprescriptionTemplates);

        Assert.assertEquals(trprescriptionTemplates.size(), 37);
    }
}
