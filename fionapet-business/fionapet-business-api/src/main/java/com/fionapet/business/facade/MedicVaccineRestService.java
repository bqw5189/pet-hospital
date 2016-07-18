package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.MedicVaccine;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 育苗表 接口
 *
* Created by tom on 2016-07-18 11:56:09.
 */

@Path("medicvaccines")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="medicvaccines", description = "育苗表接口")
public interface MedicVaccineRestService extends CURDRestService<MedicVaccine>{
    /**
     * 育苗表
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "育苗表",
            notes = "育苗表列表.")
    RestResult<List<MedicVaccine>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 育苗表 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "育苗表详细信息.")
    RestResult<MedicVaccine> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改育苗表", notes = "添加/修改育苗表")
    RestResult<MedicVaccine> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,MedicVaccine medicVaccine);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除育苗表", notes = "删除育苗表")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
