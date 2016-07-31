package com.fionapet.business.repository;

import com.fionapet.business.entity.TrprescriptionTemplateType;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 药方模版类型
* Created by tom on 2016-07-31 16:42:51.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class TrprescriptionTemplateTypeDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private TrprescriptionTemplateTypeDao trprescriptionTemplateTypeDao;

    @Test
    public void findAll(){
        List<TrprescriptionTemplateType> trprescriptionTemplateTypes = trprescriptionTemplateTypeDao.findAllBy();

        Assert.assertNotNull(trprescriptionTemplateTypes);

        Assert.assertEquals(trprescriptionTemplateTypes.size(), 14);
    }
}
