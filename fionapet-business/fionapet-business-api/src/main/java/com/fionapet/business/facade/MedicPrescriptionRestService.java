package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.MedicPrescription;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 医生处方明细 接口
 *
* Created by tom on 2016-07-18 11:56:08.
 */

@Path("medicprescriptions")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="medicprescriptions", description = "医生处方明细接口")
public interface MedicPrescriptionRestService extends CURDRestService<MedicPrescription>{
    /**
     * 医生处方明细
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "医生处方明细",
            notes = "医生处方明细列表.")
    RestResult<List<MedicPrescription>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 医生处方明细 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "医生处方明细详细信息.")
    RestResult<MedicPrescription> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改医生处方明细", notes = "添加/修改医生处方明细")
    RestResult<MedicPrescription> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,MedicPrescription medicPrescription);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除医生处方明细", notes = "删除医生处方明细")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
