package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.ReturnCommodityDetail;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 返回商品明细 接口
 *
* Created by tom on 2016-07-18 11:56:11.
 */

@Path("returncommoditydetails")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="returncommoditydetails", description = "返回商品明细接口")
public interface ReturnCommodityDetailRestService extends CURDRestService<ReturnCommodityDetail>{
    /**
     * 返回商品明细
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "返回商品明细",
            notes = "返回商品明细列表.")
    RestResult<List<ReturnCommodityDetail>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 返回商品明细 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "返回商品明细详细信息.")
    RestResult<ReturnCommodityDetail> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改返回商品明细", notes = "添加/修改返回商品明细")
    RestResult<ReturnCommodityDetail> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,ReturnCommodityDetail returnCommodityDetail);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除返回商品明细", notes = "删除返回商品明细")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
