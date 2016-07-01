package com.fionapet.business.facade;

import cn.fiona.pet.account.facade.AuthRestService;
import cn.fiona.pet.account.facade.RestResult;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.PetRace;
import com.fionapet.business.entity.PetSmallRace;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

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
public interface PetSmallRaceRestService extends CURDRestService<PetSmallRace>{
    /**
     * 宠物类型
     * @return
     */
    @GET
    @Path("smalls")
    @ApiOperation(value = "宠物类型",
            notes = "宠物类型列表.")
    RestResult<List<PetSmallRace>> list(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 宠物类型 详细信息
     *
     * @return
     */
    @GET
    @Path("smalls/{id}")
    @ApiOperation(value = "详细信息",
            notes = "宠物类型详细信息.")
    RestResult<PetSmallRace> detail(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("smalls")
    @ApiOperation(value = "添加/修改宠物类型", notes = "添加/修改宠物类型")
    RestResult<PetSmallRace> create(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, PetSmallRace petSmallRace);

    @DELETE
    @Path("smalls/{id}")
    @ApiOperation(value = "删除宠物类型", notes = "删除宠物类型")
    RestResult<String> delete(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

}
