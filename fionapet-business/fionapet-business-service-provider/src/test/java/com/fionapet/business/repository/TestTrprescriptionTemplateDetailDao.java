package com.fionapet.business.repository;

import com.fionapet.business.entity.TrprescriptionTemplateDetail;
import org.junit.Assert;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 处方模版明细
 * Created by tom on 16/6/21.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class TestTrprescriptionTemplateDetailDao extends SpringTransactionalTestCase {
    private static final Logger LOGGER = LoggerFactory.getLogger(TestTrprescriptionTemplateDetailDao.class);
    @Autowired
    private TrprescriptionTemplateDetailDao trprescriptionTemplateDetailDao;


    @Test
    public void findAll() {
        List<TrprescriptionTemplateDetail> trprescriptionTemplateDetails = trprescriptionTemplateDetailDao.findAllByOrderByCreateDateAsc();

        Assert.assertNotNull(trprescriptionTemplateDetails);
        Assert.assertEquals(trprescriptionTemplateDetails.size(), 306);
    }

}
