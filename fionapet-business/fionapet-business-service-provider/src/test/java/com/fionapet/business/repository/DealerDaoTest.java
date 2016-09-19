package com.fionapet.business.repository;

import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.Dealer;
import com.fionapet.business.entity.Pet;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 代理商
* Created by tom on 2016-07-31 16:42:51.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class DealerDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private DealerDao dealerDao;

    @Test
    public void findAll(){
        List<Dealer> dealers = dealerDao.findAllBy();

        Assert.assertNotNull(dealers);

        Assert.assertEquals(dealers.size(), 5);
    }


    @Test
    public void findPage(){
        Pageable pageable = new PageRequest(0, 3);


        Page<Dealer> page = dealerDao.findAll(pageable);

        System.out.println(JSON.toJSON(page));
    }

    @Test
    @Rollback(false)
    public void update(){
        Dealer dealer  = dealerDao.findOne("68c2c9bc-5787-11e6-9b57-ec4aad85924d");
//        JSON.parseObject("{\"id\":\"68c2c9bc-5787-11e6-9b57-ec4aad85924d\",\"status\":{\"id\":\"68479670-5787-11e6-9b57-ec4aad85924d\",\"createUserId\"\n" +
//                ":\"34ff5c2e-6625-4d6d-ad39-d1745755b3a8\",\"createDate\":1470037230000,\"updateUserId\":\"34ff5c2e-6625-4d6d-ad39-d1745755b3a8\"\n" +
//                ",\"updateDate\":1470037230000,\"dictDetailCode\":\"SM00001\",\"valueNameCn\":\"正常\",\"valueNameEn\":\"\",\"comments\"\n" +
//                ":\"\"},\"createUserId\":\"fc5db3b3-4063-4a12-a511-880ba19e4b58\",\"createDate\":1470014977000,\"updateUserId\"\n" +
//                ":\"fc5db3b3-4063-4a12-a511-880ba19e4b58\",\"updateDate\":1470014977000,\"code\":\"JXS0000000005\",\"name\":\"宠儿\n" +
//                "香122112\",\"contractMan\":\"白群伟1\",\"mobilePhone\":\"15801632955\",\"telPhone\":\"15811210806\",\"email\":\"e@1.com\",\"dealerAddress\"\n" +
//                ":\"11\",\"fax\":\"1234567\",\"website\":null,\"taxNo\":null,\"bankName\":null,\"dealerBankName\":null,\"accountNo\":null\n" +
//                ",\"remark\":null,\"companyType\":\"DEALER\"}", Dealer.class);

        dealerDao.save(dealer);

        dealer = dealerDao.findOne(dealer.getId());

        Assert.assertNotNull(dealer);
    }
}
