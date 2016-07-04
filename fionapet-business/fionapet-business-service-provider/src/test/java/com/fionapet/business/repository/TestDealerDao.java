package com.fionapet.business.repository;

import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.Dealer;
import com.fionapet.business.entity.MemberLevel;
import org.junit.Assert;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.persistence.DynamicSpecifications;
import org.springside.modules.persistence.SearchFilter;
import org.springside.modules.test.spring.SpringTransactionalTestCase;
import sun.security.util.DisabledAlgorithmConstraints;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by tom on 16/6/21.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class TestDealerDao extends SpringTransactionalTestCase {
    private static final Logger LOGGER = LoggerFactory.getLogger(TestDealerDao.class);
    @Autowired
    private DealerDao dealerDao;


    @Test
    public void findAll() {
        Sort sort = new Sort(Sort.Direction.fromString("desc"), "createDate");
        Pageable pageable = new PageRequest(0, 2, sort);
        Map<String, Object> searchParams = new HashMap<String, Object>();

        searchParams.put("LIKE_name", "北京龙科生物制药有限公司");
        Map<String, SearchFilter> filters = SearchFilter.parse(searchParams);
        Specification<Dealer> spec = DynamicSpecifications.bySearchFilter(filters.values(), Dealer.class);

        Page<Dealer> page = dealerDao.findAll(spec, pageable);

        Assert.assertNotNull(page);
        Assert.assertEquals(page.getTotalElements(), 1);
        Assert.assertEquals(page.getTotalPages(), 1);
        Assert.assertEquals(page.getSize(), 2);

        LOGGER.info("page data:{}", JSON.toJSON(page));

    }

}
