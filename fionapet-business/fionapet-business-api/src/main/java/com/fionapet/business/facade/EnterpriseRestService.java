package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.Enterprise;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 企业信息表 接口
 *
* Created by tom on 2016-07-25 09:32:31.
 */

@Path("enterprises")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="enterprises", description = "企业信息表接口")
public interface EnterpriseRestService extends CURDRestService<Enterprise>{
    /**
     * 企业信息表
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "企业信息表",
            notes = "企业信息表列表.")
    RestResult<List<Enterprise>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 企业信息表 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "企业信息表详细信息.")
    RestResult<Enterprise> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改企业信息表", notes = "添加/修改企业信息表")
    RestResult<Enterprise> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,Enterprise enterprise);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除企业信息表", notes = "删除企业信息表")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
