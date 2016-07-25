package com.fionapet.business.repository;

import com.fionapet.business.entity.InHospitalRecord;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 医院记录表
* Created by tom on 2016-07-25 09:32:32.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class InHospitalRecordDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private InHospitalRecordDao inHospitalRecordDao;

    @Test
    public void findAll(){
        List<InHospitalRecord> inHospitalRecords = inHospitalRecordDao.findAllBy();

        Assert.assertNotNull(inHospitalRecords);

        Assert.assertEquals(inHospitalRecords.size(), 0);
    }
}
