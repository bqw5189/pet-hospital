package com.fionapet.business.repository;

import com.fionapet.business.entity.ItemCate;
import org.junit.Assert;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * Created by tom on 16/6/21.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class TestItemCateRaceDao extends SpringTransactionalTestCase {
    private static final Logger LOGGER = LoggerFactory.getLogger(TestItemCateRaceDao.class);
    @Autowired
    private ItemCateDao itemCateDao;


    @Test
    public void findAll() {
        List<ItemCate> ItemCates = itemCateDao.findAllByOrderByCreateDateAsc();

        Assert.assertNotNull(ItemCates);
        Assert.assertEquals(ItemCates.size(),15);
    }
    @Test
    public void findByParentId(){
        List<ItemCate> list = itemCateDao.findByParentId("1467f659-dbf8-4ede-89fd-396b08bbdc8c");
        Assert.assertNotNull(list);
    }
    @Test
    public void curd(){
        String name = "宠物药品1";
        String userId = "fc5db3b3-4063-4a12-a511-880ba19e4b58";
        ItemCate itemCate = itemCateDao.findByCateName(name);

        Assert.assertNull(itemCate);

        itemCate = new ItemCate();
        itemCate.setCateName("宠物药品A");
        itemCate.setCateNo("CWYPA");
        itemCate.setBusiTypeId("5a2ba3bf-37d2-4d18-ac49-09ab7823e40R");

        itemCate.setSingleProfit(30.00);
        itemCate.setCreateUserId(userId);
        itemCate.setUpdateUserId(userId);

        itemCateDao.save(itemCate);

        Assert.assertNotNull(itemCate.getUuid());

        itemCate.setCateName("宠物药品A");

        itemCateDao.save(itemCate);

        itemCate = itemCateDao.findByCateName(name);

        Assert.assertNull(itemCate);

        itemCate = itemCateDao.findByCateName("宠物药品A");

        itemCateDao.delete(itemCate);

        itemCate = itemCateDao.findByCateName("宠物药品A");

        Assert.assertNull(itemCate);
    }
}
