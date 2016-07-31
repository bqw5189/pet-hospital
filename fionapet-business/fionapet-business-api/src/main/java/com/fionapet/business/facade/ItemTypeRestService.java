package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.ItemType;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 商品类型 接口
 *
* Created by tom on 2016-07-31 16:36:26.
 */

@Path("itemtypes")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="itemtypes", description = "商品类型接口")
public interface ItemTypeRestService extends CURDRestService<ItemType>{
    /**
     * 商品类型
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "商品类型",
            notes = "商品类型列表.")
    RestResult<List<ItemType>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 商品类型 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "商品类型详细信息.")
    RestResult<ItemType> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改商品类型", notes = "添加/修改商品类型")
    RestResult<ItemType> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,ItemType itemType);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除商品类型", notes = "删除商品类型")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
