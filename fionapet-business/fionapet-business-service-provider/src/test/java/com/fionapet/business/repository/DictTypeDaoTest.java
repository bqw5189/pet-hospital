package com.fionapet.business.repository;

import com.fionapet.business.entity.DictType;
import com.google.common.collect.ImmutableList;
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

        DictType dictType = dictTypes.get(0);
        Assert.assertNotNull(dictType);
    }

    @Test
    public void selects(){
        List<String> names = ImmutableList.of("付款状态","检查状态");

        List<DictType> dictTypes = dictTypeDao.findByDictNameIn(names);

        Assert.assertNotNull(dictTypes);
        Assert.assertEquals(dictTypes.size(),2);
    }
}
