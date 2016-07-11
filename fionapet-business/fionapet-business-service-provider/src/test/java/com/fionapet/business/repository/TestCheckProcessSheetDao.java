package com.fionapet.business.repository;

import com.fionapet.business.entity.CheckProcessSheet;
import org.junit.Assert;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 检查处理单据
 * Created by tom on 16/6/21.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class TestCheckProcessSheetDao extends SpringTransactionalTestCase {
    private static final Logger LOGGER = LoggerFactory.getLogger(TestCheckProcessSheetDao.class);
    @Autowired
    private CheckProcessSheetDao checkProcessSheetDao;


    @Test
    public void findAll() {
        List<CheckProcessSheet> checkProcessSheets = checkProcessSheetDao.findAllByOrderByCreateDateAsc();

        Assert.assertNotNull(checkProcessSheets);
        Assert.assertEquals(checkProcessSheets.size(), 0);
    }

}
