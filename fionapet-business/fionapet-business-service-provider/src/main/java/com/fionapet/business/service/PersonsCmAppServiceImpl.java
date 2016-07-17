package com.fionapet.business.service;

import com.fionapet.business.entity.PersonsCmApp;
import com.fionapet.business.repository.DaoBase;
import com.fionapet.business.repository.PersonsCmAppDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  t_persons_cm_app
 * @author baiqw
 */
public class PersonsCmAppServiceImpl extends CURDServiceBase<PersonsCmApp> implements PersonsCmAppService {
    @Autowired
    private PersonsCmAppDao personsCmAppDao;

    @Override
    public DaoBase<PersonsCmApp> getDao() {
        return personsCmAppDao;
    }
}
