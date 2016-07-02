package com.fionapet.business.service;

import com.fionapet.business.entity.BusinesCate;
import com.fionapet.business.repository.DaoBase;
import com.fionapet.business.repository.BusinesCateDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
* 业务类型实现类
 * @author bailj
 */
public class BusinesCateServiceImpl extends CURDServiceBase<BusinesCate> implements BusinesCateService {
    @Autowired
    private BusinesCateDao businesCateDao;

    @Override
    public DaoBase<BusinesCate> getDao() {
        return businesCateDao;
    }
}
