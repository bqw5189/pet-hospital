package com.fionapet.business.repository;

import com.fionapet.business.entity.AppConfig;
import com.fionapet.business.entity.SettleAccountsView;
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
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class SettleAccountsDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private SettleAccountsDao settleAccountsDao;

    @Test
    public void findAll(){
        List<SettleAccountsView> list = settleAccountsDao.findAllBy();

        Assert.assertNotNull(list);

        Assert.assertEquals(list.size(), 101);
    }

    @Test
    public void findAllByGestId(){
        List<SettleAccountsView> list = settleAccountsDao.findByGestId("ff80808157bcd51b0157bd107a440000");

        Assert.assertNotNull(list);

        Assert.assertEquals(list.size(), 4);
    }

}
