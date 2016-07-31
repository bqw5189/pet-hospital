package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.PetRace;
import com.fionapet.business.service.PetRaceService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-31 16:42:52.
 */
public class PetRaceDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(PetRaceDemoAction.class);
    private PetRaceService petRaceService;

    public PetRaceService getPetRaceService() {
        return petRaceService;
    }

    public void setPetRaceService(PetRaceService petRaceService) {
        this.petRaceService = petRaceService;
    }

    public void start() throws Exception {
        List<PetRace> petRaces = petRaceService.listAll();
        assert(petRaces != null);
        assert(petRaces.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(petRaces));
    }
}
