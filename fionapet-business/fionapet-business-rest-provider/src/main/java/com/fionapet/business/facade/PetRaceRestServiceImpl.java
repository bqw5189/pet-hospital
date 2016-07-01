package com.fionapet.business.facade;

import cn.fiona.pet.account.facade.AuthRestService;
import cn.fiona.pet.account.facade.RestResult;
import com.fionapet.business.entity.PetRace;
import com.fionapet.business.service.CURDService;
import com.fionapet.business.service.PetRaceService;
import io.swagger.annotations.ApiParam;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.ws.rs.HeaderParam;

/**
 * User: baiqw
 * Date: 14-12-9
 * Time: 下午3:45
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
