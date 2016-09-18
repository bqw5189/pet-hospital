package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.UserDict;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 用户字典 接口
 *
* Created by tom on 2016-07-31 16:36:24.
 */

@Path("userdicts")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="userdicts", description = "用户字典接口")
public interface UserDictRestService extends CURDRestService<UserDict>,SelectRestService{
    /**
     * 用户字典
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "用户字典",
            notes = "用户字典列表.")
    RestResult<List<UserDict>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 用户字典 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "用户字典详细信息.")
    RestResult<UserDict> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改用户字典", notes = "添加/修改用户字典")
    RestResult<UserDict> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,UserDict userDict);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除用户字典", notes = "删除用户字典")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
