package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.TrprescriptionTemplateDetail;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 药方模版明细 接口
 *
* Created by tom on 2016-07-31 16:42:51.
 */

@Path("trprescriptiontemplatedetails")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="trprescriptiontemplatedetails", description = "药方模版明细接口")
public interface TrprescriptionTemplateDetailRestService extends CURDRestService<TrprescriptionTemplateDetail>{
    /**
     * 药方模版明细
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "药方模版明细",
            notes = "药方模版明细列表.")
    RestResult<List<TrprescriptionTemplateDetail>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 药方模版明细 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "药方模版明细详细信息.")
    RestResult<TrprescriptionTemplateDetail> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改药方模版明细", notes = "添加/修改药方模版明细")
    RestResult<TrprescriptionTemplateDetail> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,TrprescriptionTemplateDetail trprescriptionTemplateDetail);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除药方模版明细", notes = "删除药方模版明细")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
