package com.fionapet.business.facade;

import cn.fiona.pet.account.facade.AuthRestService;
import cn.fiona.pet.account.facade.RestResult;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.AppConfig;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 提醒配置表 接口
 *
 * @author baiqw
 */

@Path("appconfigs")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="appconfigs", description = "提醒配置表接口")
public interface AppConfigRestService extends CURDRestService<AppConfig>{
    /**
     * 提醒配置表
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "提醒配置表",
            notes = "提醒配置表列表.")
    RestResult<List<AppConfig>> list(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 提醒配置表 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "提醒配置表详细信息.")
    RestResult<AppConfig> detail(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改提醒配置表", notes = "添加/修改提醒配置表")
    RestResult<AppConfig> create(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token,AppConfig appConfig);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除提醒配置表", notes = "删除提醒配置表")
    RestResult<String> delete(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
