package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.PrescriptionTemplateDetail;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 处方模版明细 接口
 *
* Created by tom on 2016-07-31 16:42:51.
 */

@Path("prescriptiontemplatedetails")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="prescriptiontemplatedetails", description = "处方模版明细接口")
public interface PrescriptionTemplateDetailRestService extends CURDRestService<PrescriptionTemplateDetail>{
    /**
     * 处方模版明细
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "处方模版明细",
            notes = "处方模版明细列表.")
    RestResult<List<PrescriptionTemplateDetail>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 处方模版明细 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "处方模版明细详细信息.")
    RestResult<PrescriptionTemplateDetail> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改处方模版明细", notes = "添加/修改处方模版明细")
    RestResult<PrescriptionTemplateDetail> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,PrescriptionTemplateDetail prescriptionTemplateDetail);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除处方模版明细", notes = "删除处方模版明细")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
