package com.fionapet.business.repository;

import com.fionapet.business.entity.MedicChemicalExamtypeDetail;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 医生化验实例类型细节表
* Created by tom on 2016-07-18 11:00:46.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class MedicChemicalExamtypeDetailDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private MedicChemicalExamtypeDetailDao medicChemicalExamtypeDetailDao;

    @Test
    public void findAll(){
        List<MedicChemicalExamtypeDetail> medicChemicalExamtypeDetails = medicChemicalExamtypeDetailDao.findAllBy();

        Assert.assertNotNull(medicChemicalExamtypeDetails);

        Assert.assertEquals(medicChemicalExamtypeDetails.size(), 744);
    }
}
