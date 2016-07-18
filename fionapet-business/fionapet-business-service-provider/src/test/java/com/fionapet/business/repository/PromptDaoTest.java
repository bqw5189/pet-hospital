package com.fionapet.business.repository;

import com.fionapet.business.entity.Prompt;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 急诊表
* Created by tom on 2016-07-18 11:09:24.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class PromptDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private PromptDao promptDao;

    @Test
    public void findAll(){
        List<Prompt> prompts = promptDao.findAllBy();

        Assert.assertNotNull(prompts);

        Assert.assertEquals(prompts.size(), 0);
    }
}
