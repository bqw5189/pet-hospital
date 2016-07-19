package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.PetSmallRace;
import com.fionapet.business.service.PetSmallRaceService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-19 13:15:47.
 */
public class PetSmallRaceDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(PetSmallRaceDemoAction.class);
    private PetSmallRaceService petSmallRaceService;

    public PetSmallRaceService getPetSmallRaceService() {
        return petSmallRaceService;
    }

    public void setPetSmallRaceService(PetSmallRaceService petSmallRaceService) {
        this.petSmallRaceService = petSmallRaceService;
    }

    public void start() throws Exception {
        List<PetSmallRace> petSmallRaces = petSmallRaceService.listAll();
        assert(petSmallRaces != null);
        assert(petSmallRaces.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(petSmallRaces));
    }
}
