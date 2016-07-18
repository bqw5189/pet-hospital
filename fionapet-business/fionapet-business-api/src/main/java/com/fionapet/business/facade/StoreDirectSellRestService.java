package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.StoreDirectSell;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 仓库直销主表 接口
 *
* Created by tom on 2016-07-18 11:56:09.
 */

@Path("storedirectsells")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="storedirectsells", description = "仓库直销主表接口")
public interface StoreDirectSellRestService extends CURDRestService<StoreDirectSell>{
    /**
     * 仓库直销主表
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "仓库直销主表",
            notes = "仓库直销主表列表.")
    RestResult<List<StoreDirectSell>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 仓库直销主表 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "仓库直销主表详细信息.")
    RestResult<StoreDirectSell> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改仓库直销主表", notes = "添加/修改仓库直销主表")
    RestResult<StoreDirectSell> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,StoreDirectSell storeDirectSell);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除仓库直销主表", notes = "删除仓库直销主表")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
