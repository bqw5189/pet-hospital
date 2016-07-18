package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.InHospitalPrescription;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 住院处方 接口
 *
* Created by tom on 2016-07-18 15:37:44.
 */

@Path("inhospitalprescriptions")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="inhospitalprescriptions", description = "住院处方接口")
public interface InHospitalPrescriptionRestService extends CURDRestService<InHospitalPrescription>{
    /**
     * 住院处方
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "住院处方",
            notes = "住院处方列表.")
    RestResult<List<InHospitalPrescription>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 住院处方 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "住院处方详细信息.")
    RestResult<InHospitalPrescription> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改住院处方", notes = "添加/修改住院处方")
    RestResult<InHospitalPrescription> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,InHospitalPrescription inHospitalPrescription);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除住院处方", notes = "删除住院处方")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
