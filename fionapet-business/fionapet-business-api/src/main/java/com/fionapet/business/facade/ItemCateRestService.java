package com.fionapet.business.facade;

import cn.fiona.pet.account.facade.AuthRestService;
import cn.fiona.pet.account.facade.RestResult;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.ItemCate;
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
 * @author bailj
 */

@Path("itemcates")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="itemcates", description = "商品服务种类")
public interface ItemCateRestService extends CURDRestService<ItemCate>{
    /**
     * 商品服务种类
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "商品服务种类",
            notes = "商品服务种类列表.")
    RestResult<List<ItemCate>> list(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 商品服务种类 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "仓库详细信息.")
    RestResult<ItemCate> detail(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改商品服务种类", notes = "添加/修改商品服务种类")
    RestResult<ItemCate> create(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, ItemCate itemCate);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除商品服务种类", notes = "删除商品服务种类")
    RestResult<String> delete(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
