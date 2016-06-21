package cn.fiona.pet.account.repository;

import cn.fiona.pet.account.entity.Role;
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
public class TestRoloDao extends SpringTransactionalTestCase {

    @Autowired
    private RoleDao roleDao;

    @Test
    public void findByName(){
        Role role = roleDao.findByName("admin");
        Assert.assertNotNull(role);
    }

}
