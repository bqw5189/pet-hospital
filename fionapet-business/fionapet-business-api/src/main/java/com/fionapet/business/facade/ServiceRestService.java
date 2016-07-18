package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.Service;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 服务主表 接口
 *
* Created by tom on 2016-07-18 11:56:11.
 */

@Path("services")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="services", description = "服务主表接口")
public interface ServiceRestService extends CURDRestService<Service>{
    /**
     * 服务主表
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "服务主表",
            notes = "服务主表列表.")
    RestResult<List<Service>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 服务主表 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "服务主表详细信息.")
    RestResult<Service> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改服务主表", notes = "添加/修改服务主表")
    RestResult<Service> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,Service service);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除服务主表", notes = "删除服务主表")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
