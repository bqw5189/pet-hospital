package com.fionapet.business.service;

import com.fionapet.business.entity.Gest;
import com.fionapet.business.repository.DaoBase;
import com.fionapet.business.repository.GestDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  宠物主人
 * @author baiqw
 */
public class GestServiceImpl extends CURDServiceBase<Gest> implements GestService {
    @Autowired
    private GestDao gestDao;

    @Override
    public DaoBase<Gest> getDao() {
        return gestDao;
    }
}
