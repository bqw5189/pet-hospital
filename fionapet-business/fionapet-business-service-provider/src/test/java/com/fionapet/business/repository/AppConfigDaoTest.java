package com.fionapet.business.repository;

import com.fionapet.business.entity.AppConfig;
import org.apache.commons.lang.StringUtils;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import java.util.List;

/**
 * 应用配置
* Created by tom on 2016-07-13 15:23:53.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class AppConfigDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private AppConfigDao appConfigDao;
    @Autowired
    private EntityManagerFactory entityManagerFactory;

    @Test
    public void findAll(){
        List<AppConfig> appConfigs = appConfigDao.findAllBy();

        Assert.assertNotNull(appConfigs);

        Assert.assertEquals(appConfigs.size(), 101);
    }

    @Test
    public void findByNameLike(){
        String name = "会员编号%";
        List<AppConfig> numberInfos = appConfigDao.findByConfigNameLike(name);

        Assert.assertNotNull(numberInfos);
        Assert.assertEquals(numberInfos.size(), 2);

    }

    @Test
    public void currentMaxCode(){
        String prefix = "HYDJ";
        int length = 5;

        Query query = entityManagerFactory.createEntityManager().createNativeQuery(String.format("select max(%s) from %s", "level_code", "t_gest_level"));
        Object result = query.getSingleResult();
        Assert.assertNotNull(result);
        System.out.println(result);

        if (null!=result){
            String numberCodeStr = result+"";
            numberCodeStr = numberCodeStr.replaceFirst(prefix,"");

            long numberCode = Long.parseLong(numberCodeStr) + 1;

            numberCodeStr = prefix + StringUtils.leftPad(numberCode + "", 5, "0");

            System.out.println(numberCodeStr);
        }


//
//        List<Object[]> currentMaxCode = appConfigDao.currentMaxCode("gest_code", "t_gest");
//
//        Assert.assertNull(currentMaxCode);
    }
}
