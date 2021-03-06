package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.BaseMedicPrescriptionDetail;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 处方明细 接口
 *
* Created by tom on 2016-07-18 15:56:23.
 */

@Path("basemedicprescriptiondetails")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="basemedicprescriptiondetails", description = "处方明细接口")
public interface BaseMedicPrescriptionDetailRestService extends CURDRestService<BaseMedicPrescriptionDetail>{
    /**
     * 处方明细
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "处方明细",
            notes = "处方明细列表.")
    RestResult<List<BaseMedicPrescriptionDetail>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 处方明细 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "处方明细详细信息.")
    RestResult<BaseMedicPrescriptionDetail> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改处方明细", notes = "添加/修改处方明细")
    RestResult<BaseMedicPrescriptionDetail> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,BaseMedicPrescriptionDetail baseMedicPrescriptionDetail);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除处方明细", notes = "删除处方明细")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
