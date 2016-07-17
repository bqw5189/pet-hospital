package com.fionapet.business.facade;

import cn.fiona.pet.account.facade.AuthRestService;
import cn.fiona.pet.account.facade.RestResult;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.PersonsCmApp;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * t_persons_cm_app 接口
 *
 * @author baiqw
 */

@Path("personscmapps")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="personscmapps", description = "t_persons_cm_app接口")
public interface PersonsCmAppRestService extends CURDRestService<PersonsCmApp>{
    /**
     * t_persons_cm_app
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "t_persons_cm_app",
            notes = "t_persons_cm_app列表.")
    RestResult<List<PersonsCmApp>> list(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * t_persons_cm_app 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "t_persons_cm_app详细信息.")
    RestResult<PersonsCmApp> detail(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改t_persons_cm_app", notes = "添加/修改t_persons_cm_app")
    RestResult<PersonsCmApp> create(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token,PersonsCmApp personsCmApp);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除t_persons_cm_app", notes = "删除t_persons_cm_app")
    RestResult<String> delete(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
