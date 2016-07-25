package com.fionapet.business.repository;

import com.fionapet.business.entity.GestPaidRecord;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 顾客影像记录表
* Created by tom on 2016-07-25 09:32:34.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class GestPaidRecordDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private GestPaidRecordDao gestPaidRecordDao;

    @Test
    public void findAll(){
        List<GestPaidRecord> gestPaidRecords = gestPaidRecordDao.findAllBy();

        Assert.assertNotNull(gestPaidRecords);

        Assert.assertEquals(gestPaidRecords.size(), 0);
    }
}
