package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.ReturnCommodity;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 返回商品主表 接口
 *
* Created by tom on 2016-07-18 11:56:09.
 */

@Path("returncommoditys")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="returncommoditys", description = "返回商品主表接口")
public interface ReturnCommodityRestService extends CURDRestService<ReturnCommodity>{
    /**
     * 返回商品主表
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "返回商品主表",
            notes = "返回商品主表列表.")
    RestResult<List<ReturnCommodity>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 返回商品主表 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "返回商品主表详细信息.")
    RestResult<ReturnCommodity> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改返回商品主表", notes = "添加/修改返回商品主表")
    RestResult<ReturnCommodity> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,ReturnCommodity returnCommodity);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除返回商品主表", notes = "删除返回商品主表")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
