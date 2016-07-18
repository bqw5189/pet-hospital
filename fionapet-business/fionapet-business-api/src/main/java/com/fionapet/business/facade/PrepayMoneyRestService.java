package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.PrepayMoney;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 提前付费表 接口
 *
* Created by tom on 2016-07-18 11:56:10.
 */

@Path("prepaymoneys")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="prepaymoneys", description = "提前付费表接口")
public interface PrepayMoneyRestService extends CURDRestService<PrepayMoney>{
    /**
     * 提前付费表
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "提前付费表",
            notes = "提前付费表列表.")
    RestResult<List<PrepayMoney>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 提前付费表 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "提前付费表详细信息.")
    RestResult<PrepayMoney> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改提前付费表", notes = "添加/修改提前付费表")
    RestResult<PrepayMoney> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,PrepayMoney prepayMoney);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除提前付费表", notes = "删除提前付费表")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
