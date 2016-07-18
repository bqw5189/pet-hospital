package com.fionapet.business.repository;

import com.fionapet.business.entity.SerialNumber;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 序列号
* Created by tom on 2016-07-18 11:09:24.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class SerialNumberDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private SerialNumberDao serialNumberDao;

    @Test
    public void findAll(){
        List<SerialNumber> serialNumbers = serialNumberDao.findAllBy();

        Assert.assertNotNull(serialNumbers);

        Assert.assertEquals(serialNumbers.size(), 27);
    }
}
