package com.fionapet.business.facade;

import com.fionapet.business.entity.PetSmallRace;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.PetSmallRaceService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 宠物品种
* Created by tom on 2016-07-19 13:15:47.
 */
public class PetSmallRaceRestServiceImpl extends RestServiceBase<PetSmallRace> implements PetSmallRaceRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(PetSmallRaceRestServiceImpl.class);

    private PetSmallRaceService petSmallRaceService;

    public PetSmallRaceService getPetSmallRaceService() {
        return petSmallRaceService;
    }

    public void setPetSmallRaceService(PetSmallRaceService petSmallRaceService) {
        this.petSmallRaceService = petSmallRaceService;
    }

    @Override
    public CURDService<PetSmallRace> getService() {
        return petSmallRaceService;
    }

}
