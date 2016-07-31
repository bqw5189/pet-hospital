package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.UserDictDetail;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 数据字典 字典明细项 接口
 *
* Created by tom on 2016-07-31 13:37:08.
 */

@Path("userdictdetails")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="userdictdetails", description = "数据字典 字典明细项接口")
public interface UserDictDetailRestService extends CURDRestService<UserDictDetail>{
    /**
     * 数据字典 字典明细项
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "数据字典 字典明细项",
            notes = "数据字典 字典明细项列表.")
    RestResult<List<UserDictDetail>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 数据字典 字典明细项 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "数据字典 字典明细项详细信息.")
    RestResult<UserDictDetail> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改数据字典 字典明细项", notes = "添加/修改数据字典 字典明细项")
    RestResult<UserDictDetail> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,UserDictDetail userDictDetail);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除数据字典 字典明细项", notes = "删除数据字典 字典明细项")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
