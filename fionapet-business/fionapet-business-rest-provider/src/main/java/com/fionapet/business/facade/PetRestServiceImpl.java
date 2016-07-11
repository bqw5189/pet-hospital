package com.fionapet.business.facade;

import com.fionapet.business.entity.Pet;
import com.fionapet.business.service.CURDService;
import com.fionapet.business.service.PetService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 宠物
 * User: baiqw
 * Date: 14-12-9
 * Time: 下午3:45
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
