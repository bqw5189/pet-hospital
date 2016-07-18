package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.WarehouseInventory;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 仓库存货清单 接口
 *
* Created by tom on 2016-07-18 11:56:09.
 */

@Path("warehouseinventorys")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="warehouseinventorys", description = "仓库存货清单接口")
public interface WarehouseInventoryRestService extends CURDRestService<WarehouseInventory>{
    /**
     * 仓库存货清单
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "仓库存货清单",
            notes = "仓库存货清单列表.")
    RestResult<List<WarehouseInventory>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 仓库存货清单 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "仓库存货清单详细信息.")
    RestResult<WarehouseInventory> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改仓库存货清单", notes = "添加/修改仓库存货清单")
    RestResult<WarehouseInventory> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,WarehouseInventory warehouseInventory);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除仓库存货清单", notes = "删除仓库存货清单")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
