package com.fionapet.business.repository;

import com.fionapet.business.entity.ItemType;
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
public class TestItemTypeRaceDao extends SpringTransactionalTestCase {
    private static final Logger LOGGER = LoggerFactory.getLogger(TestItemTypeRaceDao.class);
    @Autowired
    private ItemTypeDao itemTypeDao;


    @Test
    public void findAll() {
        List<ItemType> ItemTypes = itemTypeDao.findAllByOrderByCreateDateAsc();

        Assert.assertNotNull(ItemTypes);
       // Assert.assertEquals(ItemTypes.size(),12);
    }

    @Test
    public void curd(){
        String name = "宠物药品1";
        String userId = "fc5db3b3-4063-4a12-a511-880ba19e4b58";
        ItemType itemType = itemTypeDao.findByItemName(name);

        Assert.assertNull(itemType);

        itemType = new ItemType();
        itemType.setItemName("宠物药品A");

        itemType.setCreateUserId(userId);
        itemType.setUpdateUserId(userId);

        itemTypeDao.save(itemType);

        Assert.assertNotNull(itemType.getUuid());

        itemType.setItemName("宠物药品A");

        itemTypeDao.save(itemType);

        itemType = itemTypeDao.findByItemName(name);

        Assert.assertNull(itemType);

        itemType = itemTypeDao.findByItemName("宠物药品A");

        itemTypeDao.delete(itemType);

        itemType = itemTypeDao.findByItemName("宠物药品A");

        Assert.assertNull(itemType);
    }
}
