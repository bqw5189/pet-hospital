package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.ItemtypeSupplies;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 供应量表 接口
 *
* Created by tom on 2016-07-25 09:32:33.
 */

@Path("itemtypesuppliess")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="itemtypesuppliess", description = "供应量表接口")
public interface ItemtypeSuppliesRestService extends CURDRestService<ItemtypeSupplies>{
    /**
     * 供应量表
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "供应量表",
            notes = "供应量表列表.")
    RestResult<List<ItemtypeSupplies>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 供应量表 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "供应量表详细信息.")
    RestResult<ItemtypeSupplies> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改供应量表", notes = "添加/修改供应量表")
    RestResult<ItemtypeSupplies> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,ItemtypeSupplies itemtypeSupplies);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除供应量表", notes = "删除供应量表")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
