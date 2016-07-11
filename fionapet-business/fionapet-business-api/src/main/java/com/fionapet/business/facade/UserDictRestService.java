package com.fionapet.business.facade;

import cn.fiona.pet.account.facade.AuthRestService;
import cn.fiona.pet.account.facade.RestResult;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.UserDict;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 应用字典大类 接口
 *
 * @author baiqw
 */

@Path("userdicts")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="userdicts", description = "应用字典大类接口")
public interface UserDictRestService extends CURDRestService<UserDict>{
    /**
     * 应用字典大类
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "应用字典大类",
            notes = "应用字典大类列表.")
    RestResult<List<UserDict>> list(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 应用字典大类 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "应用字典大类详细信息.")
    RestResult<UserDict> detail(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改应用字典大类", notes = "添加/修改应用字典大类")
    RestResult<UserDict> create(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token,UserDict userDict);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除应用字典大类", notes = "删除应用字典大类")
    RestResult<String> delete(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
