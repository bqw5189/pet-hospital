package com.fionapet.business.service;

import com.fionapet.business.entity.VipInputTem;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.VipInputTemDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  VIP信息
* Created by tom on 2016-07-18 11:56:11.
 */
public class VipInputTemServiceImpl extends CURDServiceBase<VipInputTem> implements VipInputTemService {
    @Autowired
    private VipInputTemDao vipInputTemDao;

    @Override
    public DaoBase<VipInputTem> getDao() {
        return vipInputTemDao;
    }
}
