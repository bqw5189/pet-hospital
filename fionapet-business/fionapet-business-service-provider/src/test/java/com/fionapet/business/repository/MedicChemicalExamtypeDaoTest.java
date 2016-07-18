package com.fionapet.business.repository;

import com.fionapet.business.entity.MedicChemicalExamtype;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 医生化验实例类型细节表
* Created by tom on 2016-07-18 11:09:24.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class MedicChemicalExamtypeDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private MedicChemicalExamtypeDao medicChemicalExamtypeDao;

    @Test
    public void findAll(){
        List<MedicChemicalExamtype> medicChemicalExamtypes = medicChemicalExamtypeDao.findAllBy();

        Assert.assertNotNull(medicChemicalExamtypes);

        Assert.assertEquals(medicChemicalExamtypes.size(), 248);
    }
}
