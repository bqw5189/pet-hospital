package com.fionapet.business.repository;

import com.fionapet.business.entity.MedicMedictreatRecord;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 医生处理记录
* Created by tom on 2016-07-18 11:09:24.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class MedicMedictreatRecordDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private MedicMedictreatRecordDao medicMedictreatRecordDao;

    @Test
    public void findAll(){
        List<MedicMedictreatRecord> medicMedictreatRecords = medicMedictreatRecordDao.findAllBy();

        Assert.assertNotNull(medicMedictreatRecords);

        Assert.assertEquals(medicMedictreatRecords.size(), 0);
    }
}
