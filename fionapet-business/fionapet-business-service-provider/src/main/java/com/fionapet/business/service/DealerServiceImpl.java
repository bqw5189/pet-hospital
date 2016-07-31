package com.fionapet.business.service;

import com.fionapet.business.entity.Dealer;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.DealerDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  代理商
* Created by tom on 2016-07-31 16:42:51.
 */
public class DealerServiceImpl extends CURDServiceBase<Dealer> implements DealerService {
    @Autowired
    private DealerDao dealerDao;

    @Override
    public DaoBase<Dealer> getDao() {
        return dealerDao;
    }
}
