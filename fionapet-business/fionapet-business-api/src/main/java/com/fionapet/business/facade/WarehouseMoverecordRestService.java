package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.WarehouseMoverecord;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 移库记录 接口
 *
* Created by tom on 2016-07-18 11:56:08.
 */

@Path("warehousemoverecords")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="warehousemoverecords", description = "移库记录接口")
public interface WarehouseMoverecordRestService extends CURDRestService<WarehouseMoverecord>{
    /**
     * 移库记录
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "移库记录",
            notes = "移库记录列表.")
    RestResult<List<WarehouseMoverecord>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 移库记录 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "移库记录详细信息.")
    RestResult<WarehouseMoverecord> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改移库记录", notes = "添加/修改移库记录")
    RestResult<WarehouseMoverecord> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,WarehouseMoverecord warehouseMoverecord);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除移库记录", notes = "删除移库记录")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
