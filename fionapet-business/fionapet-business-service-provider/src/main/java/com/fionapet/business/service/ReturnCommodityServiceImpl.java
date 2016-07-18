package com.fionapet.business.service;

import com.fionapet.business.entity.ReturnCommodity;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.ReturnCommodityDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  返回商品主表
* Created by tom on 2016-07-18 11:56:09.
 */
public class ReturnCommodityServiceImpl extends CURDServiceBase<ReturnCommodity> implements ReturnCommodityService {
    @Autowired
    private ReturnCommodityDao returnCommodityDao;

    @Override
    public DaoBase<ReturnCommodity> getDao() {
        return returnCommodityDao;
    }
}
