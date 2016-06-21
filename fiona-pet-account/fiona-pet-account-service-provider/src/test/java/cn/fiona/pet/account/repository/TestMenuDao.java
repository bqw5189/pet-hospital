package cn.fiona.pet.account.repository;

import cn.fiona.pet.account.entity.Menu;
import cn.fiona.pet.account.entity.User;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * Created by tom on 16/6/21.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class TestMenuDao extends SpringTransactionalTestCase {

    @Autowired
    private MenuDao menuDao;

    @Test
    public void findByCode(){
        String rootCode = "M00000";

        Menu menu = menuDao.findByCode(rootCode);

        Assert.assertNotNull(menu);

        List<Menu> menus = menuDao.findByParentMenuCode(rootCode);


        Assert.assertTrue(menu.getMenus().containsAll(menus));
    }
}
