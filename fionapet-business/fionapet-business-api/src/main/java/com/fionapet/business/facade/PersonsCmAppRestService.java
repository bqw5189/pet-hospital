package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.PersonsCmApp;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 宠物主人 接口
 *
* Created by tom on 2016-07-31 16:36:25.
 */

@Path("personscmapps")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="personscmapps", description = "宠物主人接口")
public interface PersonsCmAppRestService extends CURDRestService<PersonsCmApp>{
    /**
     * 宠物主人
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "宠物主人",
            notes = "宠物主人列表.")
    RestResult<List<PersonsCmApp>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 宠物主人 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "宠物主人详细信息.")
    RestResult<PersonsCmApp> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改宠物主人", notes = "添加/修改宠物主人")
    RestResult<PersonsCmApp> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,PersonsCmApp personsCmApp);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除宠物主人", notes = "删除宠物主人")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
