package com.fionapet.business.service;

import com.fionapet.business.entity.Gest;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.GestDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  会员
* Created by tom on 2016-07-22 14:21:59.
 */
public class GestServiceImpl extends CURDServiceBase<Gest> implements GestService {
    @Autowired
    private GestDao gestDao;

    @Override
    public DaoBase<Gest> getDao() {
        return gestDao;
    }
}
