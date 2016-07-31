package com.fionapet.business.service;

import com.fionapet.business.entity.PetRace;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.PetRaceDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  宠物种类
* Created by tom on 2016-07-31 16:42:52.
 */
public class PetRaceServiceImpl extends CURDServiceBase<PetRace> implements PetRaceService {
    @Autowired
    private PetRaceDao petRaceDao;

    @Override
    public DaoBase<PetRace> getDao() {
        return petRaceDao;
    }
}
