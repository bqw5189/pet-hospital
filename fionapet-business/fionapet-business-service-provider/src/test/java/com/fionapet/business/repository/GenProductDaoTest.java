package com.fionapet.business.repository;

import com.fionapet.business.entity.AppConfig;
import com.fionapet.business.entity.ItemType;
import com.fionapet.business.entity.StatusEntity;
import com.fionapet.business.entity.UserDictDetail;
import com.fionapet.business.util.ExcelUtils;
import com.fionapet.business.util.Pinyin4Utils;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang.StringUtils;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
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

public class GenProductDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private ItemTypeDao itemTypeDao;

    @Autowired
    private UserDictDetailDao userDictDetailDao;

    @Test
    @Rollback(false)
    public void gen(){
        String file = "products.xls";

        List<List<String>> data = ExcelUtils.toList(GenProductDaoTest.class.getClassLoader().getResourceAsStream(file));

        for (List<String> row: data){
            List<ItemType> itemTypes = itemTypeDao.findByItemName(row.get(0));
            ItemType itemType = new ItemType();

            for (ItemType item:itemTypes){
                if (item.getItemStandard()!= null && item.getItemStandard().equals(row.get(1))){
                    itemType = item;
                    break;
                }
            }

            itemType.setItemName(row.get(0));
            itemType.setInputCode(Pinyin4Utils.getFirstSpell(row.get(0)));
            itemType.setInputPrice(Double.parseDouble(StringUtils.defaultIfEmpty(row.get(6),"0")));
            itemType.setSellPrice(Double.parseDouble(StringUtils.defaultIfEmpty(row.get(7),"0")));
            itemType.setRecipePrice(Double.parseDouble(StringUtils.defaultIfEmpty(row.get(5),"0")));
            itemType.setItemBulk(Integer.parseInt(StringUtils.defaultIfEmpty(row.get(4),"0")));
            itemType.setItemStandard(row.get(1));
            itemType.setCateNo("ICate01");
            itemType.setPackageUnit(getUserDictDetailNo(row.get(2)));
            itemType.setRecipeUnit(getUserDictDetailNo(row.get(3)));
            itemType.setBarCode(row.get(9));
            itemType.setItemCode(row.get(10));
            itemType.setStatus(StatusEntity.DEFAULT());

            itemType.setCreateUserId("34ff5c2e-6625-4d6d-ad39-d1745755b3a8");
            itemType.setUpdateUserId("34ff5c2e-6625-4d6d-ad39-d1745755b3a8");

            System.out.println(itemType);

            itemTypeDao.save(itemType);
        }
    }

    @Test
    @Rollback(false)
    /**
     * 化验项目
     */
    public void genChemicalExam(){
        String file = "products.xls";

        List<List<String>> data = ExcelUtils.toList(GenProductDaoTest.class.getClassLoader().getResourceAsStream(file),3);

        for (List<String> row: data){
            ItemType itemType  = toItemType(row, "ICate04");
            itemTypeDao.save(itemType);
        }
    }

    @Test
    @Rollback(false)
    /**
     * 手术
     */
    public void genSurgery(){
        String file = "products.xls";

        List<List<String>> data = ExcelUtils.toList(GenProductDaoTest.class.getClassLoader().getResourceAsStream(file),6);

        for (List<String> row: data){
            ItemType itemType  = toItemType(row, "ICate07");

            itemTypeDao.save(itemType);
        }
    }

    @Test
    @Rollback(false)
    /**
     * 医疗处置
     */
    public void genHandle(){
        String file = "products.xls";

        List<List<String>> data = ExcelUtils.toList(GenProductDaoTest.class.getClassLoader().getResourceAsStream(file),7);

        for (List<String> row: data){
            ItemType itemType  = toItemType(row, "ICate08");

            itemTypeDao.save(itemType);
        }
    }

    @Test
    @Rollback(false)
    /**
     * 挂号
     */
    public void genRegister(){
        String file = "products.xls";

        List<List<String>> data = ExcelUtils.toList(GenProductDaoTest.class.getClassLoader().getResourceAsStream(file),9);

        for (List<String> row: data){
            ItemType itemType  = toItemType(row, "ICate10");

            itemTypeDao.save(itemType);
        }
    }
    @Test
    @Rollback(false)
    /**
     * 美容
     */
    public void genFacial(){
        String file = "products.xls";

        List<List<String>> data = ExcelUtils.toList(GenProductDaoTest.class.getClassLoader().getResourceAsStream(file),11);

        for (List<String> row: data){
            ItemType itemType  = toItemType(row, "ICate12");

            itemTypeDao.save(itemType);
        }
    }



    private ItemType toItemType(List<String> row, String cate){
        List<ItemType> itemTypes = itemTypeDao.findByItemName(row.get(0));
        ItemType itemType = new ItemType();

        for (ItemType item:itemTypes){
            if (StringUtils.equals(item.getItemCode(), row.get(7))){
                itemType = item;
                break;
            }
        }

        itemType.setItemName(row.get(0));
        itemType.setInputCode(Pinyin4Utils.getFirstSpell(row.get(0)));
        itemType.setItemStandard(row.get(1));
//            itemType.setInputPrice(Double.parseDouble(StringUtils.defaultIfEmpty(row.get(6),"0")));
//            itemType.setSellPrice(Double.parseDouble(StringUtils.defaultIfEmpty(row.get(7),"0")));
        itemType.setRecipePrice(Double.parseDouble(StringUtils.defaultIfEmpty(row.get(15),"0")));
//            itemType.setItemBulk(Integer.parseInt(StringUtils.defaultIfEmpty(row.get(4),"0")));
//            itemType.setItemStandard(row.get(1));
        itemType.setCateNo(cate);
//            itemType.setPackageUnit(getUserDictDetailNo(row.get(2)));
        itemType.setRecipeUnit(row.get(14));
        itemType.setBarCode(row.get(6));
        itemType.setItemCode(row.get(7));
        itemType.setStatus(StatusEntity.DEFAULT());

        itemType.setCreateUserId("34ff5c2e-6625-4d6d-ad39-d1745755b3a8");
        itemType.setUpdateUserId("34ff5c2e-6625-4d6d-ad39-d1745755b3a8");

        System.out.println(itemType);

        return itemType;
    }

    private String getUserDictDetailNo(String name){
        List<UserDictDetail> userDictDetail = userDictDetailDao.findByValueNameCn(name);
        if (null != userDictDetail && userDictDetail.size()>0){
            return userDictDetail.get(0).getDictDetailCode();
        }
        return "";
    }

}
