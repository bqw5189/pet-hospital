package com.fionapet.business.repository;

import com.fionapet.business.entity.Images;
import org.junit.Assert;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 图片信息
 * Created by tom on 16/6/21.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class TestImagesDao extends SpringTransactionalTestCase {
    private static final Logger LOGGER = LoggerFactory.getLogger(TestImagesDao.class);
    @Autowired
    private ImagesDao imagesDao;


    @Test
    public void findAll() {
        List<Images> imagess = imagesDao.findAllByOrderByCreateDateAsc();

        Assert.assertNotNull(imagess);
        Assert.assertEquals(imagess.size(), 0);
    }

}
