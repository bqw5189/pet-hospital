package com.fionapet.business.repository;

import com.fionapet.business.entity.TrprescriptionTemplateType;
import org.junit.Assert;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 处方模版类型
 * Created by tom on 16/6/21.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class TestTrprescriptionTemplateTypeDao extends SpringTransactionalTestCase {
    private static final Logger LOGGER = LoggerFactory.getLogger(TestTrprescriptionTemplateTypeDao.class);
    @Autowired
    private TrprescriptionTemplateTypeDao trprescriptionTemplateTypeDao;


    @Test
    public void findAll() {
        List<TrprescriptionTemplateType> trprescriptionTemplateTypes = trprescriptionTemplateTypeDao.findAllByOrderByCreateDateAsc();

        Assert.assertNotNull(trprescriptionTemplateTypes);
        Assert.assertEquals(trprescriptionTemplateTypes.size(), 14);
    }

}
