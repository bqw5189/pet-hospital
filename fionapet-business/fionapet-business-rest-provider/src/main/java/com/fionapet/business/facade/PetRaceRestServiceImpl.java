package com.fionapet.business.facade;

import cn.fiona.pet.account.facade.AuthRestService;
import cn.fiona.pet.account.facade.RestResult;
import com.fionapet.business.entity.PetRace;
import com.fionapet.business.exception.ApiException;
import com.fionapet.business.exception.NotFoundException;
import com.fionapet.business.service.PetRaceService;
import io.swagger.annotations.ApiParam;
import org.hibernate.validator.constraints.NotEmpty;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.ws.rs.HeaderParam;
import javax.ws.rs.PathParam;
import java.util.List;

/**
 * User: baiqw
 * Date: 14-12-9
 * Time: 下午3:45
 */
public class PetRaceRestServiceImpl implements PetRaceRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(PetRaceRestServiceImpl.class);

    private PetRaceService petRaceService;

    public PetRaceService getPetRaceService() {
        return petRaceService;
    }

    public void setPetRaceService(PetRaceService petRaceService) {
        this.petRaceService = petRaceService;
    }

    @Override
    public RestResult<List<PetRace>> races(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token) {
        return RestResult.OK(petRaceService.listAll());
    }

    @Override
    public RestResult<PetRace> create(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, PetRace petRace) {
        return null;
    }

    @Override
    public RestResult<String> delete(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") String uuid) {
        return null;
    }
}
