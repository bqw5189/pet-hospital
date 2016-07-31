package com.fionapet.business.repository;

import com.fionapet.business.entity.TrprescriptionTemplateDetail;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 药方模版明细
* Created by tom on 2016-07-31 16:42:51.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class TrprescriptionTemplateDetailDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private TrprescriptionTemplateDetailDao trprescriptionTemplateDetailDao;

    @Test
    public void findAll(){
        List<TrprescriptionTemplateDetail> trprescriptionTemplateDetails = trprescriptionTemplateDetailDao.findAllBy();

        Assert.assertNotNull(trprescriptionTemplateDetails);

        Assert.assertEquals(trprescriptionTemplateDetails.size(), 306);
    }
}
