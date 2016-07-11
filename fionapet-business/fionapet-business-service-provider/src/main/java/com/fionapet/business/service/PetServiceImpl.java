package com.fionapet.business.service;

import com.fionapet.business.entity.Pet;
import com.fionapet.business.repository.DaoBase;
import com.fionapet.business.repository.PetDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  宠物
 * @author baiqw
 */
public class PetServiceImpl extends CURDServiceBase<Pet> implements PetService {
    @Autowired
    private PetDao petDao;

    @Override
    public DaoBase<Pet> getDao() {
        return petDao;
    }
}
