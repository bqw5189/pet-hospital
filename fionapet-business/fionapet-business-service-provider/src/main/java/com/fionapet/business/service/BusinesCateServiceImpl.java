package com.fionapet.business.service;

import com.fionapet.business.entity.BusinesCate;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.BusinesCateDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  业务类型表
* Created by tom on 2016-07-31 16:36:25.
 */
public class BusinesCateServiceImpl extends CURDServiceBase<BusinesCate> implements BusinesCateService {
    @Autowired
    private BusinesCateDao businesCateDao;

    @Override
    public DaoBase<BusinesCate> getDao() {
        return businesCateDao;
    }
}
