package com.fionapet.business.service;

import com.fionapet.business.entity.PetSmallRace;
import com.fionapet.business.repository.DaoBase;
import com.fionapet.business.repository.PetSmallRaceDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * @author baiqw
 */
public class PetSmallRaceServiceImpl extends CURDServiceBase<PetSmallRace> implements PetSmallRaceService {
    @Autowired
    private PetSmallRaceDao petSmallRaceDao;

    @Override
    public DaoBase<PetSmallRace> getDao() {
        return petSmallRaceDao;
    }
}
