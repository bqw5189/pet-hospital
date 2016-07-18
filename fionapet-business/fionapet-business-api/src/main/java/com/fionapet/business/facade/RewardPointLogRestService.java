package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.RewardPointLog;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 序列号 接口
 *
* Created by tom on 2016-07-18 11:56:09.
 */

@Path("rewardpointlogs")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="rewardpointlogs", description = "序列号接口")
public interface RewardPointLogRestService extends CURDRestService<RewardPointLog>{
    /**
     * 序列号
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "序列号",
            notes = "序列号列表.")
    RestResult<List<RewardPointLog>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 序列号 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "序列号详细信息.")
    RestResult<RewardPointLog> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改序列号", notes = "添加/修改序列号")
    RestResult<RewardPointLog> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,RewardPointLog rewardPointLog);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除序列号", notes = "删除序列号")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
