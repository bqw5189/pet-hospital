package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.Enterprise;
import com.fionapet.business.service.EnterpriseService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-25 09:32:31.
 */
public class EnterpriseDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(EnterpriseDemoAction.class);
    private EnterpriseService enterpriseService;

    public EnterpriseService getEnterpriseService() {
        return enterpriseService;
    }

    public void setEnterpriseService(EnterpriseService enterpriseService) {
        this.enterpriseService = enterpriseService;
    }

    public void start() throws Exception {
        List<Enterprise> enterprises = enterpriseService.listAll();
        assert(enterprises != null);
        assert(enterprises.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(enterprises));
    }
}
