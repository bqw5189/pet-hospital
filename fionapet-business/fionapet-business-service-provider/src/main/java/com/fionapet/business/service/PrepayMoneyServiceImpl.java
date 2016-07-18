package com.fionapet.business.service;

import com.fionapet.business.entity.PrepayMoney;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.PrepayMoneyDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  提前付费表
* Created by tom on 2016-07-18 11:56:10.
 */
public class PrepayMoneyServiceImpl extends CURDServiceBase<PrepayMoney> implements PrepayMoneyService {
    @Autowired
    private PrepayMoneyDao prepayMoneyDao;

    @Override
    public DaoBase<PrepayMoney> getDao() {
        return prepayMoneyDao;
    }
}
