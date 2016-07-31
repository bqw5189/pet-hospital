package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.Persons;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 宠物主人信息 接口
 *
* Created by tom on 2016-07-31 16:42:52.
 */

@Path("personss")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="personss", description = "宠物主人信息接口")
public interface PersonsRestService extends CURDRestService<Persons>{
    /**
     * 宠物主人信息
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "宠物主人信息",
            notes = "宠物主人信息列表.")
    RestResult<List<Persons>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 宠物主人信息 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "宠物主人信息详细信息.")
    RestResult<Persons> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改宠物主人信息", notes = "添加/修改宠物主人信息")
    RestResult<Persons> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,Persons persons);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除宠物主人信息", notes = "删除宠物主人信息")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
