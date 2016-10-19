package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.WarehouseInrecord;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 进库记录 接口
 *
* Created by tom on 2016-07-18 11:56:10.
 */

@Path("warehouseinrecords")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="warehouseinrecords", description = "进库记录接口")
public interface WarehouseInrecordRestService extends CURDRestService<WarehouseInrecord>{
    /**
     * 进库记录
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "进库记录",
            notes = "进库记录列表.")
    RestResult<List<WarehouseInrecord>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 进库记录 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "进库记录详细信息.")
    RestResult<WarehouseInrecord> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改进库记录", notes = "添加/修改进库记录")
    RestResult<WarehouseInrecord> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,WarehouseInrecord warehouseInrecord);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除进库记录", notes = "删除进库记录")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @GET
    @Path("/audit/{id}")
    @ApiOperation(value = "审核进库记录", notes = "审核进库记录")
    RestResult<String> audit(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
