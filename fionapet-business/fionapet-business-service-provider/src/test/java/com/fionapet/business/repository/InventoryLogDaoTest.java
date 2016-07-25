package com.fionapet.business.repository;

import com.fionapet.business.entity.InventoryLog;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 存货清单日志表
* Created by tom on 2016-07-25 09:32:30.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class InventoryLogDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private InventoryLogDao inventoryLogDao;

    @Test
    public void findAll(){
        List<InventoryLog> inventoryLogs = inventoryLogDao.findAllBy();

        Assert.assertNotNull(inventoryLogs);

        Assert.assertEquals(inventoryLogs.size(), 0);
    }
}
