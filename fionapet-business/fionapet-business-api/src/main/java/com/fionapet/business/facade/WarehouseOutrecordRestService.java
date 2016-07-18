package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.WarehouseOutrecord;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 出库记录 接口
 *
* Created by tom on 2016-07-18 11:56:10.
 */

@Path("warehouseoutrecords")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="warehouseoutrecords", description = "出库记录接口")
public interface WarehouseOutrecordRestService extends CURDRestService<WarehouseOutrecord>{
    /**
     * 出库记录
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "出库记录",
            notes = "出库记录列表.")
    RestResult<List<WarehouseOutrecord>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 出库记录 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "出库记录详细信息.")
    RestResult<WarehouseOutrecord> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改出库记录", notes = "添加/修改出库记录")
    RestResult<WarehouseOutrecord> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,WarehouseOutrecord warehouseOutrecord);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除出库记录", notes = "删除出库记录")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
