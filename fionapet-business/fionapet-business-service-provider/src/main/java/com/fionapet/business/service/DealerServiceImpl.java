package com.fionapet.business.service;

import com.fionapet.business.entity.Dealer;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.DealerDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

/**
 *  代理商
* Created by tom on 2016-07-31 16:42:51.
 */
@Transactional
public class DealerServiceImpl extends StatusCURDServiceBase<Dealer> implements DealerService {
    @Autowired
    private DealerDao dealerDao;

    @Override
    public DaoBase<Dealer> getDao() {
        return dealerDao;
    }
}
