package com.fionapet.business.repository;

import com.fionapet.business.entity.FosterRecord;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 养育记录主表
* Created by tom on 2016-07-25 09:32:32.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class FosterRecordDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private FosterRecordDao fosterRecordDao;

    @Test
    public void findAll(){
        List<FosterRecord> fosterRecords = fosterRecordDao.findAllBy();

        Assert.assertNotNull(fosterRecords);

        Assert.assertEquals(fosterRecords.size(), 0);
    }
}
