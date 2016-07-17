package com.fionapet.business.service;

import com.fionapet.business.entity.GestLevel;
import com.fionapet.business.repository.DaoBase;
import com.fionapet.business.repository.GestLevelDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  会员等级管理
 * @author baiqw
 */
public class GestLevelServiceImpl extends CURDServiceBase<GestLevel> implements GestLevelService {
    @Autowired
    private GestLevelDao gestLevelDao;

    @Override
    public DaoBase<GestLevel> getDao() {
        return gestLevelDao;
    }
}
