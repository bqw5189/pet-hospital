package com.fionapet.business.repository;

import com.fionapet.business.entity.MedicSupplies;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 医生供应量表
* Created by tom on 2016-07-18 11:00:46.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class MedicSuppliesDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private MedicSuppliesDao medicSuppliesDao;

    @Test
    public void findAll(){
        List<MedicSupplies> medicSuppliess = medicSuppliesDao.findAllBy();

        Assert.assertNotNull(medicSuppliess);

        Assert.assertEquals(medicSuppliess.size(), 0);
    }
}
