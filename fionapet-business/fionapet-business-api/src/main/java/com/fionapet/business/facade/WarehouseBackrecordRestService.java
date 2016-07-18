package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.WarehouseBackrecord;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 退回记录 接口
 *
* Created by tom on 2016-07-18 11:56:09.
 */

@Path("warehousebackrecords")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="warehousebackrecords", description = "退回记录接口")
public interface WarehouseBackrecordRestService extends CURDRestService<WarehouseBackrecord>{
    /**
     * 退回记录
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "退回记录",
            notes = "退回记录列表.")
    RestResult<List<WarehouseBackrecord>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 退回记录 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "退回记录详细信息.")
    RestResult<WarehouseBackrecord> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改退回记录", notes = "添加/修改退回记录")
    RestResult<WarehouseBackrecord> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,WarehouseBackrecord warehouseBackrecord);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除退回记录", notes = "删除退回记录")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
