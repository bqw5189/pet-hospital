package com.fionapet.business.facade;

import cn.fiona.pet.account.facade.AuthRestService;
import cn.fiona.pet.account.facade.RestResult;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.Gest;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 宠物主人 接口
 *
 * @author baiqw
 */

@Path("gests")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="gests", description = "宠物主人接口")
public interface GestRestService extends CURDRestService<Gest>{
    /**
     * 宠物主人
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "宠物主人",
            notes = "宠物主人列表.")
    RestResult<List<Gest>> list(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 宠物主人 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "宠物主人详细信息.")
    RestResult<Gest> detail(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改宠物主人", notes = "添加/修改宠物主人")
    RestResult<Gest> create(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token,Gest gest);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除宠物主人", notes = "删除宠物主人")
    RestResult<String> delete(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
