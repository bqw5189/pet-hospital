package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.ItemCate;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 商品服务种类 接口
 *
* Created by tom on 2016-07-31 16:42:52.
 */

@Path("itemcates")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="itemcates", description = "商品服务种类接口")
public interface ItemCateRestService extends CURDRestService<ItemCate>,SelectRestService{
    /**
     * 商品服务种类
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "商品服务种类",
            notes = "商品服务种类列表.")
    RestResult<List<ItemCate>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 商品服务种类 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "商品服务种类详细信息.")
    RestResult<ItemCate> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改商品服务种类", notes = "添加/修改商品服务种类")
    RestResult<ItemCate> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,ItemCate itemCate);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除商品服务种类", notes = "删除商品服务种类")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
