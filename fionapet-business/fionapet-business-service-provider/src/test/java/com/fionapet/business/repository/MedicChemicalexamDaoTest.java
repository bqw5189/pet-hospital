package com.fionapet.business.repository;

import com.fionapet.business.entity.MedicChemicalexam;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 化验单明细
* Created by tom on 2016-07-31 16:42:52.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class MedicChemicalexamDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private MedicChemicalexamDao medicChemicalexamDao;

    @Test
    public void findAll(){
        List<MedicChemicalexam> medicChemicalexams = medicChemicalexamDao.findAllBy();

        Assert.assertNotNull(medicChemicalexams);

        Assert.assertEquals(medicChemicalexams.size(), 0);
    }
}
