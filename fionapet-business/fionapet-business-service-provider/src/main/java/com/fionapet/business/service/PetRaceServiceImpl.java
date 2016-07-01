package com.fionapet.business.service;

import com.fionapet.business.entity.PetRace;
import com.fionapet.business.repository.DaoBase;
import com.fionapet.business.repository.PetRaceDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * @author baiqw
 */
public class PetRaceServiceImpl extends CURDServiceBase<PetRace> implements PetRaceService {
    @Autowired
    private PetRaceDao petRaceDao;

    @Override
    public DaoBase<PetRace> getDao() {
        return petRaceDao;
    }
}
