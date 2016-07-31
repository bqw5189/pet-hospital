package com.fionapet.business.repository;

import com.fionapet.business.entity.MedicChemicalExamDetail;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 化验单明细
* Created by tom on 2016-07-31 16:36:25.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class MedicChemicalExamDetailDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private MedicChemicalExamDetailDao medicChemicalExamDetailDao;

    @Test
    public void findAll(){
        List<MedicChemicalExamDetail> medicChemicalExamDetails = medicChemicalExamDetailDao.findAllBy();

        Assert.assertNotNull(medicChemicalExamDetails);

        Assert.assertEquals(medicChemicalExamDetails.size(), 0);
    }
}
