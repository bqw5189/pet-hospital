package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.MedicSupplies;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 医生供应量表 接口
 *
* Created by tom on 2016-07-18 11:56:09.
 */

@Path("medicsuppliess")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="medicsuppliess", description = "医生供应量表接口")
public interface MedicSuppliesRestService extends CURDRestService<MedicSupplies>{
    /**
     * 医生供应量表
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "医生供应量表",
            notes = "医生供应量表列表.")
    RestResult<List<MedicSupplies>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 医生供应量表 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "医生供应量表详细信息.")
    RestResult<MedicSupplies> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改医生供应量表", notes = "添加/修改医生供应量表")
    RestResult<MedicSupplies> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,MedicSupplies medicSupplies);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除医生供应量表", notes = "删除医生供应量表")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
