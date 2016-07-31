package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.TrprescriptionTemplateType;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 药方模版类型 接口
 *
* Created by tom on 2016-07-31 16:42:52.
 */

@Path("trprescriptiontemplatetypes")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="trprescriptiontemplatetypes", description = "药方模版类型接口")
public interface TrprescriptionTemplateTypeRestService extends CURDRestService<TrprescriptionTemplateType>{
    /**
     * 药方模版类型
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "药方模版类型",
            notes = "药方模版类型列表.")
    RestResult<List<TrprescriptionTemplateType>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 药方模版类型 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "药方模版类型详细信息.")
    RestResult<TrprescriptionTemplateType> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改药方模版类型", notes = "添加/修改药方模版类型")
    RestResult<TrprescriptionTemplateType> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,TrprescriptionTemplateType trprescriptionTemplateType);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除药方模版类型", notes = "删除药方模版类型")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
