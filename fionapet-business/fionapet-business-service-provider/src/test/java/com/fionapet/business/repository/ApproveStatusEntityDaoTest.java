package com.fionapet.business.repository;

import com.fionapet.business.entity.ApproveStatusEntity;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 审批状态实体
* Created by tom on 2016-07-18 11:09:24.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class ApproveStatusEntityDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private ApproveStatusEntityDao approveStatusEntityDao;

    @Test
    public void findAll(){
        List<ApproveStatusEntity> approveStatusEntitys = approveStatusEntityDao.findAllBy();

        Assert.assertNotNull(approveStatusEntitys);

        Assert.assertEquals(approveStatusEntitys.size(), 0);
    }
}
