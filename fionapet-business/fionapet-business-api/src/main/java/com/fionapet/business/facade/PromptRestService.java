package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.Prompt;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 急诊表 接口
 *
* Created by tom on 2016-07-18 11:56:10.
 */

@Path("prompts")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="prompts", description = "急诊表接口")
public interface PromptRestService extends CURDRestService<Prompt>{
    /**
     * 急诊表
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "急诊表",
            notes = "急诊表列表.")
    RestResult<List<Prompt>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 急诊表 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "急诊表详细信息.")
    RestResult<Prompt> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改急诊表", notes = "添加/修改急诊表")
    RestResult<Prompt> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,Prompt prompt);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除急诊表", notes = "删除急诊表")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
