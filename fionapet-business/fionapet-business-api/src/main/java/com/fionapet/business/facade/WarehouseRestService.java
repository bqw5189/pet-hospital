package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.Warehouse;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 仓库信息表 接口
 *
* Created by tom on 2016-08-27 10:45:14.
 */

@Path("warehouses")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="warehouses", description = "仓库信息表接口")
public interface WarehouseRestService extends CURDRestService<Warehouse>{
    /**
     * 仓库信息表
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "仓库信息表",
            notes = "仓库信息表列表.")
    RestResult<List<Warehouse>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 仓库信息表 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "仓库信息表详细信息.")
    RestResult<Warehouse> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改仓库信息表", notes = "添加/修改仓库信息表")
    RestResult<Warehouse> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,Warehouse warehouse);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除仓库信息表", notes = "删除仓库信息表")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
