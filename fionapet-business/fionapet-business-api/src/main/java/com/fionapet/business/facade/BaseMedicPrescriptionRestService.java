package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.BaseMedicPrescription;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 处方 接口
 *
* Created by tom on 2016-07-18 15:56:24.
 */

@Path("basemedicprescriptions")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="basemedicprescriptions", description = "处方接口")
public interface BaseMedicPrescriptionRestService extends CURDRestService<BaseMedicPrescription>{
    /**
     * 处方
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "处方",
            notes = "处方列表.")
    RestResult<List<BaseMedicPrescription>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 处方 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "处方详细信息.")
    RestResult<BaseMedicPrescription> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改处方", notes = "添加/修改处方")
    RestResult<BaseMedicPrescription> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,BaseMedicPrescription baseMedicPrescription);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除处方", notes = "删除处方")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
