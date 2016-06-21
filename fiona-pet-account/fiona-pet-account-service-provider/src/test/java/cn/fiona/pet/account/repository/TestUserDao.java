package cn.fiona.pet.account.repository;

import cn.fiona.pet.account.entity.User;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

/**
 * Created by tom on 16/6/21.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class TestUserDao extends SpringTransactionalTestCase {

    @Autowired
    private UserDao userDao;

    @Test
    public void findByLoginName(){
        User user = userDao.findByLoginName("admin");
        Assert.assertNotNull(user);


    }

}
