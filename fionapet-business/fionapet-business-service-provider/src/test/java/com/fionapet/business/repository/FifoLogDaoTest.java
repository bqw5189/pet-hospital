package com.fionapet.business.repository;

import com.fionapet.business.entity.FifoLog;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 进库出库日志
* Created by tom on 2016-07-25 09:32:31.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class FifoLogDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private FifoLogDao fifoLogDao;

    @Test
    public void findAll(){
        List<FifoLog> fifoLogs = fifoLogDao.findAllBy();

        Assert.assertNotNull(fifoLogs);

        Assert.assertEquals(fifoLogs.size(), 0);
    }
}
