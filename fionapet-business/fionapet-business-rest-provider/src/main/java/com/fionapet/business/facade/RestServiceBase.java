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
import java.util.List;

/**
 * User: baiqw
 * Date: 14-12-9
 * Time: 下午3:45
 */
public abstract class RestServiceBase<T> implements CURDRestService<T>{
    private static final Logger LOGGER = LoggerFactory.getLogger(RestServiceBase.class);

    public abstract CURDService<T> getService();

    public RestResult<List<T>> list(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token) {
        return RestResult.OK(getService().listAll());
    }

    public RestResult<T> create(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, T petRace) {
        LOGGER.debug("create or update :{}", petRace);
        return RestResult.OK(getService().createOrUpdte(petRace));
    }

    public RestResult<String> delete(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") String uuid) {
        LOGGER.debug("delete :{}", uuid);
        getService().delete(uuid);
        return RestResult.OK("删除成功!");
    }


    @Override
    public RestResult<T> detail(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") String uuid) {
        return RestResult.OK(getService().detail(uuid));
    }


}
