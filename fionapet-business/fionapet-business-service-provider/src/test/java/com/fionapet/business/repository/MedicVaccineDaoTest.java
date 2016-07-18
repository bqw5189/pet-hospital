package com.fionapet.business.repository;

import com.fionapet.business.entity.MedicVaccine;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 育苗表
* Created by tom on 2016-07-18 11:00:46.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class MedicVaccineDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private MedicVaccineDao medicVaccineDao;

    @Test
    public void findAll(){
        List<MedicVaccine> medicVaccines = medicVaccineDao.findAllBy();

        Assert.assertNotNull(medicVaccines);

        Assert.assertEquals(medicVaccines.size(), 0);
    }
}
