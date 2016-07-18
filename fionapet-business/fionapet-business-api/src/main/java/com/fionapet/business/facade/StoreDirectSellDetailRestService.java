package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.StoreDirectSellDetail;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 仓库直销明细 接口
 *
* Created by tom on 2016-07-18 11:56:11.
 */

@Path("storedirectselldetails")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="storedirectselldetails", description = "仓库直销明细接口")
public interface StoreDirectSellDetailRestService extends CURDRestService<StoreDirectSellDetail>{
    /**
     * 仓库直销明细
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "仓库直销明细",
            notes = "仓库直销明细列表.")
    RestResult<List<StoreDirectSellDetail>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 仓库直销明细 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "仓库直销明细详细信息.")
    RestResult<StoreDirectSellDetail> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改仓库直销明细", notes = "添加/修改仓库直销明细")
    RestResult<StoreDirectSellDetail> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,StoreDirectSellDetail storeDirectSellDetail);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除仓库直销明细", notes = "删除仓库直销明细")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
