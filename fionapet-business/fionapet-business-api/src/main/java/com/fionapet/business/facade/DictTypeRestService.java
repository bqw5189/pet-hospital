package com.fionapet.business.facade;

import cn.fiona.pet.account.facade.AuthRestService;
import cn.fiona.pet.account.facade.RestResult;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.DictType;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 字典类型 接口
 *
 * @author baiqw
 */

@Path("dicttypes")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="dicttypes", description = "字典类型接口")
public interface DictTypeRestService extends CURDRestService<DictType>{
    /**
     * 字典类型
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "字典类型",
            notes = "字典类型列表.")
    RestResult<List<DictType>> list(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 字典类型 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "字典类型详细信息.")
    RestResult<DictType> detail(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改字典类型", notes = "添加/修改字典类型")
    RestResult<DictType> create(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token,DictType dictType);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除字典类型", notes = "删除字典类型")
    RestResult<String> delete(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
