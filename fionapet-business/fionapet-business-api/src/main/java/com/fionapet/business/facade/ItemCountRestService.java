package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.ItemCount;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 种类数量更改原因表 接口
 *
* Created by tom on 2016-07-25 09:32:32.
 */

@Path("itemcounts")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="itemcounts", description = "种类数量更改原因表接口")
public interface ItemCountRestService extends CURDRestService<ItemCount>{
    /**
     * 种类数量更改原因表
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "种类数量更改原因表",
            notes = "种类数量更改原因表列表.")
    RestResult<List<ItemCount>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 种类数量更改原因表 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "种类数量更改原因表详细信息.")
    RestResult<ItemCount> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改种类数量更改原因表", notes = "添加/修改种类数量更改原因表")
    RestResult<ItemCount> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,ItemCount itemCount);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除种类数量更改原因表", notes = "删除种类数量更改原因表")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
