package com.fionapet.business.facade;

import com.fionapet.business.entity.Pet;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.PetService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.ws.rs.HeaderParam;

/**
 * 宠物
* Created by tom on 2016-07-19 10:31:06.
 */
public class PetRestServiceImpl extends RestServiceBase<Pet> implements PetRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(PetRestServiceImpl.class);

    private PetService petService;

    public PetService getPetService() {
        return petService;
    }


    public void setPetService(PetService petService) {

        this.petService = petService;
    }

    @Override
    public CURDService<Pet> getService() {
        return petService;
    }

}
