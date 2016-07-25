package com.fionapet.business.repository;

import com.fionapet.business.entity.FosterRecordDetail;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 养育记录明细表
* Created by tom on 2016-07-25 09:32:31.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class FosterRecordDetailDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private FosterRecordDetailDao fosterRecordDetailDao;

    @Test
    public void findAll(){
        List<FosterRecordDetail> fosterRecordDetails = fosterRecordDetailDao.findAllBy();

        Assert.assertNotNull(fosterRecordDetails);

        Assert.assertEquals(fosterRecordDetails.size(), 0);
    }
}
