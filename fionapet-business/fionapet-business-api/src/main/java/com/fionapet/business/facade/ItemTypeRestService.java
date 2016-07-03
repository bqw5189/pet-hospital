package com.fionapet.business.facade;

import cn.fiona.pet.account.facade.AuthRestService;
import cn.fiona.pet.account.facade.RestResult;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.ItemType;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 商品和服务类型 接口
 *
 * @author baiqw
 */

@Path("itemtypes")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="itemtypes", description = "商品和服务类型接口")
public interface ItemTypeRestService extends CURDRestService<ItemType>{
    /**
     * 商品和服务类型
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "商品和服务类型",
            notes = "商品和服务类型列表.")
    RestResult<List<ItemType>> list(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 商品和服务类型 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "商品和服务类型详细信息.")
    RestResult<ItemType> detail(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改商品和服务类型", notes = "添加/修改商品和服务类型")
    RestResult<ItemType> create(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token,ItemType itemType);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除商品和服务类型", notes = "删除商品和服务类型")
    RestResult<String> delete(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
