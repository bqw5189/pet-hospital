package com.fionapet.business.facade;

import com.fionapet.business.entity.VipInputTem;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.VipInputTemService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * VIP信息
* Created by tom on 2016-07-18 11:56:11.
 */
public class VipInputTemRestServiceImpl extends RestServiceBase<VipInputTem> implements VipInputTemRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(VipInputTemRestServiceImpl.class);

    private VipInputTemService vipInputTemService;

    public VipInputTemService getVipInputTemService() {
        return vipInputTemService;
    }

    public void setVipInputTemService(VipInputTemService vipInputTemService) {
        this.vipInputTemService = vipInputTemService;
    }

    @Override
    public CURDService<VipInputTem> getService() {
        return vipInputTemService;
    }

}
