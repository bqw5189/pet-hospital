package com.fionapet.business.repository;

import com.fionapet.business.entity.Warehouse;
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
public class TestWarehouseRaceDao extends SpringTransactionalTestCase {
    private static final Logger LOGGER = LoggerFactory.getLogger(TestWarehouseRaceDao.class);
    @Autowired
    private WarehouseDao warehouseDao;


    @Test
    public void findAll() {
        List<Warehouse> Warehouses = warehouseDao.findAllByOrderByCreateDateAsc();

        Assert.assertNotNull(Warehouses);
        Assert.assertEquals(Warehouses.size(), 2);
    }

    @Test
    public void curd(){
        String name = "我的药房";
        String userId = "fc5db3b3-4063-4a12-a511-880ba19e4b58";
        Warehouse warehouse = warehouseDao.findByName(name);

        Assert.assertNull(warehouse);

        warehouse = new Warehouse();
        warehouse.setCode("CK0001");
        warehouse.setName(name);
        warehouse.setSellStore(true);
        warehouse.setDrugStore(false);
        warehouse.setCreateUserId(userId);
        warehouse.setUpdateUserId(userId);

        warehouseDao.save(warehouse);

        Assert.assertNotNull(warehouse.getUuid());

        warehouse.setName("医院");

        warehouseDao.save(warehouse);

        warehouse = warehouseDao.findByName(name);

        Assert.assertNull(warehouse);

        warehouse = warehouseDao.findByName("医院");

        warehouseDao.delete(warehouse);

        warehouse = warehouseDao.findByName("医院");

        Assert.assertNull(warehouse);
    }
}
