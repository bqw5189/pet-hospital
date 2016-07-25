package com.fionapet.business.repository;

import com.fionapet.business.entity.InputMoneyRecord;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 收款记录表
* Created by tom on 2016-07-25 09:32:32.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class InputMoneyRecordDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private InputMoneyRecordDao inputMoneyRecordDao;

    @Test
    public void findAll(){
        List<InputMoneyRecord> inputMoneyRecords = inputMoneyRecordDao.findAllBy();

        Assert.assertNotNull(inputMoneyRecords);

        Assert.assertEquals(inputMoneyRecords.size(), 0);
    }
}
