package com.fionapet.business.facade;

import cn.fiona.pet.account.facade.AuthRestService;
import cn.fiona.pet.account.facade.RestResult;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.Pet;
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

@Path("pets")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="pets", description = "宠物接口")
public interface PetRestService extends CURDRestService<Pet>{
    /**
     * 宠物
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "宠物",
            notes = "宠物列表.")
    RestResult<List<Pet>> list(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 宠物 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "宠物详细信息.")
    RestResult<Pet> detail(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改宠物", notes = "添加/修改宠物")
    RestResult<Pet> create(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token,Pet pet);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除宠物", notes = "删除宠物")
    RestResult<String> delete(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
