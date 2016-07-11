package com.fionapet.business.facade;

import cn.fiona.pet.account.facade.AuthRestService;
import cn.fiona.pet.account.facade.RestResult;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.MedicPrescription;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 医生开处方 接口
 *
 * @author baiqw
 */

@Path("medicprescriptions")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="medicprescriptions", description = "医生开处方接口")
public interface MedicPrescriptionRestService extends CURDRestService<MedicPrescription>{
    /**
     * 医生开处方
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "医生开处方",
            notes = "医生开处方列表.")
    RestResult<List<MedicPrescription>> list(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 医生开处方 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "医生开处方详细信息.")
    RestResult<MedicPrescription> detail(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改医生开处方", notes = "添加/修改医生开处方")
    RestResult<MedicPrescription> create(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token,MedicPrescription medicPrescription);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除医生开处方", notes = "删除医生开处方")
    RestResult<String> delete(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
