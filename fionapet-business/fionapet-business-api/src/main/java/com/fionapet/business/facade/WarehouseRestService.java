package com.fionapet.business.facade;

import cn.fiona.pet.account.facade.AuthRestService;
import cn.fiona.pet.account.facade.RestResult;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.Warehouse;
import com.fionapet.business.entity.Warehouse;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 仓库 接口
 *
 * @author bailj
 */

@Path("warehouse")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="warehouse", description = "仓库接口")
public interface WarehouseRestService extends CURDRestService<Warehouse>{
    /**
     * 仓库信息
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "仓库信息",
            notes = "仓库信息列表.")
    RestResult<List<Warehouse>> list(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 仓库信息 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "仓库详细信息.")
    RestResult<Warehouse> detail(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改仓库信息", notes = "添加/修改仓库信息")
    RestResult<Warehouse> create(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, Warehouse warehouse);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除仓库信息", notes = "删除仓库信息")
    RestResult<String> delete(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
