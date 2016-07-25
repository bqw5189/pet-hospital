package com.fionapet.business.facade;

import com.fionapet.business.entity.FosterHealth;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.FosterHealthService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 养育健康状况表
* Created by tom on 2016-07-25 09:32:32.
 */
public class FosterHealthRestServiceImpl extends RestServiceBase<FosterHealth> implements FosterHealthRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(FosterHealthRestServiceImpl.class);

    private FosterHealthService fosterHealthService;

    public FosterHealthService getFosterHealthService() {
        return fosterHealthService;
    }

    public void setFosterHealthService(FosterHealthService fosterHealthService) {
        this.fosterHealthService = fosterHealthService;
    }

    @Override
    public CURDService<FosterHealth> getService() {
        return fosterHealthService;
    }

}
