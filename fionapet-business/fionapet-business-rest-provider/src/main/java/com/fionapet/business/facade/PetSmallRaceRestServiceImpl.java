package com.fionapet.business.facade;

import com.fionapet.business.entity.PetSmallRace;
import com.fionapet.business.service.CURDService;
import com.fionapet.business.service.PetSmallRaceService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * User: baiqw
 * Date: 14-12-9
 * Time: 下午3:45
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
