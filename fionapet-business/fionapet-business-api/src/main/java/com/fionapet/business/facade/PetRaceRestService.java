package com.fionapet.business.facade;

import cn.fiona.pet.account.facade.RestResult;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.PetRace;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 宠物 接口
 *
 * @author baiqw
 */

@Path("pet")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="pet", description = "宠物接口")
public interface PetRaceRestService {
    /**
     * 宠物类型
     * @return
     */
    @GET
    @Path("races")
    @ApiOperation(value = "宠物类型",
            notes = "宠物类型列表.")
    RestResult<List<PetRace>> races();
}
