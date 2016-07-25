package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.InventoryLog;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 存货清单日志表 接口
 *
* Created by tom on 2016-07-25 09:32:30.
 */

@Path("inventorylogs")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="inventorylogs", description = "存货清单日志表接口")
public interface InventoryLogRestService extends CURDRestService<InventoryLog>{
    /**
     * 存货清单日志表
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "存货清单日志表",
            notes = "存货清单日志表列表.")
    RestResult<List<InventoryLog>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 存货清单日志表 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "存货清单日志表详细信息.")
    RestResult<InventoryLog> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改存货清单日志表", notes = "添加/修改存货清单日志表")
    RestResult<InventoryLog> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,InventoryLog inventoryLog);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除存货清单日志表", notes = "删除存货清单日志表")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
