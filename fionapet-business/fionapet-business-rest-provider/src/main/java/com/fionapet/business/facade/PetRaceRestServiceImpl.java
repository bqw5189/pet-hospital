package com.fionapet.business.facade;

import com.fionapet.business.entity.PetRace;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.PetRaceService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 宠物种类
* Created by tom on 2016-07-31 16:42:52.
 */
public class PetRaceRestServiceImpl extends RestServiceBase<PetRace> implements PetRaceRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(PetRaceRestServiceImpl.class);

    private PetRaceService petRaceService;

    public PetRaceService getPetRaceService() {
        return petRaceService;
    }

    public void setPetRaceService(PetRaceService petRaceService) {
        this.petRaceService = petRaceService;
    }

    @Override
    public CURDService<PetRace> getService() {
        return petRaceService;
    }

}
