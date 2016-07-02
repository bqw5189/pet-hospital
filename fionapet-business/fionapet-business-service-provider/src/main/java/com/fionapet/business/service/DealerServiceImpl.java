package com.fionapet.business.service;

import com.fionapet.business.entity.Dealer;
import com.fionapet.business.repository.DaoBase;
import com.fionapet.business.repository.DealerDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  经销商
 * @author baiqw
 */
public class DealerServiceImpl extends CURDServiceBase<Dealer> implements DealerService {
    @Autowired
    private DealerDao dealerDao;

    @Override
    public DaoBase<Dealer> getDao() {
        return dealerDao;
    }
}
