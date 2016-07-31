package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.TrprescriptionTemplate;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 药方模版 接口
 *
* Created by tom on 2016-07-31 16:36:25.
 */

@Path("trprescriptiontemplates")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="trprescriptiontemplates", description = "药方模版接口")
public interface TrprescriptionTemplateRestService extends CURDRestService<TrprescriptionTemplate>{
    /**
     * 药方模版
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "药方模版",
            notes = "药方模版列表.")
    RestResult<List<TrprescriptionTemplate>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 药方模版 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "药方模版详细信息.")
    RestResult<TrprescriptionTemplate> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改药方模版", notes = "添加/修改药方模版")
    RestResult<TrprescriptionTemplate> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,TrprescriptionTemplate trprescriptionTemplate);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除药方模版", notes = "删除药方模版")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
