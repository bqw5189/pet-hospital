package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.MicroSmsConfig;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 消息提醒配置表 接口
 *
* Created by tom on 2016-07-18 11:56:10.
 */

@Path("microsmsconfigs")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="microsmsconfigs", description = "消息提醒配置表接口")
public interface MicroSmsConfigRestService extends CURDRestService<MicroSmsConfig>{
    /**
     * 消息提醒配置表
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "消息提醒配置表",
            notes = "消息提醒配置表列表.")
    RestResult<List<MicroSmsConfig>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 消息提醒配置表 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "消息提醒配置表详细信息.")
    RestResult<MicroSmsConfig> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改消息提醒配置表", notes = "添加/修改消息提醒配置表")
    RestResult<MicroSmsConfig> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,MicroSmsConfig microSmsConfig);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除消息提醒配置表", notes = "删除消息提醒配置表")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
