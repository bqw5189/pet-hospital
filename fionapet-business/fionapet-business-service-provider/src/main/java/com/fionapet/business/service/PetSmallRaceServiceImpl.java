package com.fionapet.business.service;

import com.fionapet.business.entity.PageSearch;
import com.fionapet.business.entity.PetSmallRace;
import com.fionapet.business.repository.DaoBase;
import com.fionapet.business.repository.PetSmallRaceDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;

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
