package com.fionapet.business.repository;

import com.fionapet.business.entity.CheckProcessSheet;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 检查处理单据
* Created by tom on 2016-07-18 11:09:24.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class CheckProcessSheetDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private CheckProcessSheetDao checkProcessSheetDao;

    @Test
    public void findAll(){
        List<CheckProcessSheet> checkProcessSheets = checkProcessSheetDao.findAllBy();

        Assert.assertNotNull(checkProcessSheets);

        Assert.assertEquals(checkProcessSheets.size(), 0);
    }
}
