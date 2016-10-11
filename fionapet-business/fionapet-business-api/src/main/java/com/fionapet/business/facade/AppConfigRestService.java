package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.AppConfig;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 应用配置 接口
 *
* Created by tom on 2016-07-18 11:56:10.
 */

@Path("appconfigs")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="appconfigs", description = "应用配置接口")
public interface AppConfigRestService extends CURDRestService<AppConfig>{
    /**
     * 应用配置
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "应用配置",
            notes = "应用配置列表.")
    RestResult<List<AppConfig>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 应用配置-根据类型名称获取唯一编号
     * @return
     */
    @GET
    @Path("/genNumberByName")
    @ApiOperation(value = "应用配置",
            notes = "应用配置列表.")
    RestResult<String> genNumberByName(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("name") @QueryParam("name") String name);

    /**
     * 应用配置 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "应用配置详细信息.")
    RestResult<AppConfig> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改应用配置", notes = "添加/修改应用配置")
    RestResult<AppConfig> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,AppConfig appConfig);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除应用配置", notes = "删除应用配置")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
