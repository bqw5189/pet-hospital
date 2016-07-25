package com.fionapet.business.facade;

import com.fionapet.business.entity.Enterprise;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.EnterpriseService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 企业信息表
* Created by tom on 2016-07-25 09:32:31.
 */
public class EnterpriseRestServiceImpl extends RestServiceBase<Enterprise> implements EnterpriseRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(EnterpriseRestServiceImpl.class);

    private EnterpriseService enterpriseService;

    public EnterpriseService getEnterpriseService() {
        return enterpriseService;
    }

    public void setEnterpriseService(EnterpriseService enterpriseService) {
        this.enterpriseService = enterpriseService;
    }

    @Override
    public CURDService<Enterprise> getService() {
        return enterpriseService;
    }

}
