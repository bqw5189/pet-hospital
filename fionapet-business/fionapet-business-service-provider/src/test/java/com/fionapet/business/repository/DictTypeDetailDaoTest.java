package com.fionapet.business.repository;

import com.fionapet.business.entity.DictTypeDetail;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 字典类型明细
* Created by tom on 2016-07-31 16:42:53.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class DictTypeDetailDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private DictTypeDetailDao dictTypeDetailDao;

    @Test
    public void findAll(){
        List<DictTypeDetail> dictTypeDetails = dictTypeDetailDao.findAllBy();

        Assert.assertNotNull(dictTypeDetails);

        Assert.assertEquals(dictTypeDetails.size(), 73);
    }
}
