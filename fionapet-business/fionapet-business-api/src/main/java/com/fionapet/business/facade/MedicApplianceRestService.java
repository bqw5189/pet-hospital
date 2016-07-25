package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.MedicAppliance;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 医生器具表 接口
 *
* Created by tom on 2016-07-25 09:32:34.
 */

@Path("medicappliances")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="medicappliances", description = "医生器具表接口")
public interface MedicApplianceRestService extends CURDRestService<MedicAppliance>{
    /**
     * 医生器具表
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "医生器具表",
            notes = "医生器具表列表.")
    RestResult<List<MedicAppliance>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 医生器具表 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "医生器具表详细信息.")
    RestResult<MedicAppliance> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改医生器具表", notes = "添加/修改医生器具表")
    RestResult<MedicAppliance> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,MedicAppliance medicAppliance);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除医生器具表", notes = "删除医生器具表")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
