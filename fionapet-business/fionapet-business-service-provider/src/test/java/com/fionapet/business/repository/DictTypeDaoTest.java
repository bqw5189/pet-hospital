package com.fionapet.business.repository;

import com.fionapet.business.entity.DictType;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 字典类型
* Created by tom on 2016-07-31 16:42:53.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class DictTypeDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private DictTypeDao dictTypeDao;

    @Test
    public void findAll(){
        List<DictType> dictTypes = dictTypeDao.findAllBy();

        Assert.assertNotNull(dictTypes);

        Assert.assertEquals(dictTypes.size(), 21);
    }
}
