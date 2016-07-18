package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.RewardpointExchange;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 赔偿交换 接口
 *
* Created by tom on 2016-07-18 11:56:11.
 */

@Path("rewardpointexchanges")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="rewardpointexchanges", description = "赔偿交换接口")
public interface RewardpointExchangeRestService extends CURDRestService<RewardpointExchange>{
    /**
     * 赔偿交换
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "赔偿交换",
            notes = "赔偿交换列表.")
    RestResult<List<RewardpointExchange>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 赔偿交换 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "赔偿交换详细信息.")
    RestResult<RewardpointExchange> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改赔偿交换", notes = "添加/修改赔偿交换")
    RestResult<RewardpointExchange> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,RewardpointExchange rewardpointExchange);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除赔偿交换", notes = "删除赔偿交换")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
