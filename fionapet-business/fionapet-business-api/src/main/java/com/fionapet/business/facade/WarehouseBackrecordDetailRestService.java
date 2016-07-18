package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.WarehouseBackrecordDetail;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 退回记录明细 接口
 *
* Created by tom on 2016-07-18 11:56:09.
 */

@Path("warehousebackrecorddetails")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="warehousebackrecorddetails", description = "退回记录明细接口")
public interface WarehouseBackrecordDetailRestService extends CURDRestService<WarehouseBackrecordDetail>{
    /**
     * 退回记录明细
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "退回记录明细",
            notes = "退回记录明细列表.")
    RestResult<List<WarehouseBackrecordDetail>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 退回记录明细 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "退回记录明细详细信息.")
    RestResult<WarehouseBackrecordDetail> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改退回记录明细", notes = "添加/修改退回记录明细")
    RestResult<WarehouseBackrecordDetail> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,WarehouseBackrecordDetail warehouseBackrecordDetail);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除退回记录明细", notes = "删除退回记录明细")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
