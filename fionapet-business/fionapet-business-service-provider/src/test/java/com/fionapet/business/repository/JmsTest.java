package com.fionapet.business.repository;

import com.fionapet.business.entity.AppConfig;
import com.fionapet.business.jms.QueueMessageProducer;
import com.fionapet.business.jms.WarehouseNoticeInfo;
import org.apache.commons.lang.StringUtils;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import java.util.List;

/**
 * 应用配置
* Created by tom on 2016-07-13 15:23:53.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml","/META-INF/spring/applicationContext-jms.xml"})
public class JmsTest extends SpringTransactionalTestCase {

    @Autowired
    private QueueMessageProducer queueMessageProducer;

    @Test
    public void sendMessage() throws InterruptedException {
        WarehouseNoticeInfo warehouseNoticeInfo = new WarehouseNoticeInfo();
        warehouseNoticeInfo.setWarehouseRecordId("warehouseInrecordId");
        queueMessageProducer.sendQueue(warehouseNoticeInfo);

        Thread.sleep(50000l);
    }
}
