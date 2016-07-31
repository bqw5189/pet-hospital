package com.fionapet.business.repository;

import com.fionapet.business.entity.Images;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 图片信息
* Created by tom on 2016-07-31 16:42:53.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class ImagesDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private ImagesDao imagesDao;

    @Test
    public void findAll(){
        List<Images> imagess = imagesDao.findAllBy();

        Assert.assertNotNull(imagess);

        Assert.assertEquals(imagess.size(), 0);
    }
}
