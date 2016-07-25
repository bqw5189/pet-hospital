package com.fionapet.business.service;

import com.fionapet.business.entity.FosterHealth;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.FosterHealthDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  养育健康状况表
* Created by tom on 2016-07-25 09:32:32.
 */
public class FosterHealthServiceImpl extends CURDServiceBase<FosterHealth> implements FosterHealthService {
    @Autowired
    private FosterHealthDao fosterHealthDao;

    @Override
    public DaoBase<FosterHealth> getDao() {
        return fosterHealthDao;
    }
}
