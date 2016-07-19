package com.fionapet.business.service;

import com.fionapet.business.entity.Pet;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.PetDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  宠物
* Created by tom on 2016-07-19 10:31:06.
 */
public class PetServiceImpl extends CURDServiceBase<Pet> implements PetService {
    @Autowired
    private PetDao petDao;

    @Override
    public DaoBase<Pet> getDao() {
        return petDao;
    }
}
