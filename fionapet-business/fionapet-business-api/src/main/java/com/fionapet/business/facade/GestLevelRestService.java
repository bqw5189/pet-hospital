package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.GestLevel;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.Collection;
import java.util.List;
import java.util.Map;

/**
 * 会员等级管理 接口
 *
* Created by tom on 2016-07-31 16:36:25.
 */

@Path("gestlevels")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="gestlevels", description = "会员等级管理接口")
public interface GestLevelRestService extends CURDRestService<GestLevel>, SelectRestService{
    /**
     * 会员等级管理
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "会员等级管理",
            notes = "会员等级管理列表.")
    RestResult<List<GestLevel>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 会员等级管理 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "会员等级管理详细信息.")
    RestResult<GestLevel> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改会员等级管理", notes = "添加/修改会员等级管理")
    RestResult<GestLevel> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,GestLevel gestLevel);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除会员等级管理", notes = "删除会员等级管理")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("/selects")
    @ApiOperation(value = "下拉列表信息",notes = "下拉列表信息.")
    RestResult<Map<String,Collection>> selects(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, Map<String,String> param);
}
