package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.WarehouseOutrecordDetail;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 出库记录明细 接口
 *
* Created by tom on 2016-07-18 11:56:11.
 */

@Path("warehouseoutrecorddetails")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="warehouseoutrecorddetails", description = "出库记录明细接口")
public interface WarehouseOutrecordDetailRestService extends CURDRestService<WarehouseOutrecordDetail>{
    /**
     * 出库记录明细
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "出库记录明细",
            notes = "出库记录明细列表.")
    RestResult<List<WarehouseOutrecordDetail>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 出库记录明细 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "出库记录明细详细信息.")
    RestResult<WarehouseOutrecordDetail> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改出库记录明细", notes = "添加/修改出库记录明细")
    RestResult<WarehouseOutrecordDetail> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,WarehouseOutrecordDetail warehouseOutrecordDetail);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除出库记录明细", notes = "删除出库记录明细")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
