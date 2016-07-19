package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.Pet;
import com.fionapet.business.service.PetService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-19 10:31:06.
 */
public class PetDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(PetDemoAction.class);
    private PetService petService;

    public PetService getPetService() {
        return petService;
    }

    public void setPetService(PetService petService) {
        this.petService = petService;
    }

    public void start() throws Exception {
        List<Pet> pets = petService.listAll();
        assert(pets != null);
        assert(pets.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(pets));
    }
}
