package com.fionapet.business.repository;

import com.fionapet.business.entity.MedicAppliance;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 医生器具表
* Created by tom on 2016-07-25 09:32:34.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class MedicApplianceDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private MedicApplianceDao medicApplianceDao;

    @Test
    public void findAll(){
        List<MedicAppliance> medicAppliances = medicApplianceDao.findAllBy();

        Assert.assertNotNull(medicAppliances);

        Assert.assertEquals(medicAppliances.size(), 0);
    }
}
