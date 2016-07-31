package com.fionapet.business.service;

import com.fionapet.business.entity.GestLevel;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.GestLevelDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  会员等级管理
* Created by tom on 2016-07-31 16:36:25.
 */
public class GestLevelServiceImpl extends CURDServiceBase<GestLevel> implements GestLevelService {
    @Autowired
    private GestLevelDao gestLevelDao;

    @Override
    public DaoBase<GestLevel> getDao() {
        return gestLevelDao;
    }
}
