package com.fionapet.business.repository;

import com.fionapet.business.entity.BillVO;
import com.fionapet.business.entity.GestPaidRecord;
import com.fionapet.business.entity.SettleAccountsView;
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
public class BillVoDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private BillVODao billVODao;

    @Test
    public void findAll(){
        List<BillVO> gestPaidRecords = billVODao.findAllBy();

        Assert.assertNotNull(gestPaidRecords);

        Assert.assertEquals(gestPaidRecords.size(), 1);
    }

   
}
