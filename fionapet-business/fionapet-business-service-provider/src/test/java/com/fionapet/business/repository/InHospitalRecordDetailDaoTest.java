package com.fionapet.business.repository;

import com.fionapet.business.entity.InHospitalRecordDetail;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 医院记录明细表
* Created by tom on 2016-07-25 09:32:31.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class InHospitalRecordDetailDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private InHospitalRecordDetailDao inHospitalRecordDetailDao;

    @Test
    public void findAll(){
        List<InHospitalRecordDetail> inHospitalRecordDetails = inHospitalRecordDetailDao.findAllBy();

        Assert.assertNotNull(inHospitalRecordDetails);

        Assert.assertEquals(inHospitalRecordDetails.size(), 0);
    }
}
