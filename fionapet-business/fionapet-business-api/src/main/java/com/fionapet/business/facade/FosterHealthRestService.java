package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.FosterHealth;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 养育健康状况表 接口
 *
* Created by tom on 2016-07-25 09:32:32.
 */

@Path("fosterhealths")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="fosterhealths", description = "养育健康状况表接口")
public interface FosterHealthRestService extends CURDRestService<FosterHealth>{
    /**
     * 养育健康状况表
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "养育健康状况表",
            notes = "养育健康状况表列表.")
    RestResult<List<FosterHealth>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 养育健康状况表 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "养育健康状况表详细信息.")
    RestResult<FosterHealth> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改养育健康状况表", notes = "添加/修改养育健康状况表")
    RestResult<FosterHealth> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,FosterHealth fosterHealth);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除养育健康状况表", notes = "删除养育健康状况表")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
