package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.PrescriptionTemplate;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 处方模版 接口
 *
* Created by tom on 2016-07-31 16:42:52.
 */

@Path("prescriptiontemplates")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="prescriptiontemplates", description = "处方模版接口")
public interface PrescriptionTemplateRestService extends CURDRestService<PrescriptionTemplate>{
    /**
     * 处方模版
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "处方模版",
            notes = "处方模版列表.")
    RestResult<List<PrescriptionTemplate>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 处方模版 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "处方模版详细信息.")
    RestResult<PrescriptionTemplate> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改处方模版", notes = "添加/修改处方模版")
    RestResult<PrescriptionTemplate> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,PrescriptionTemplate prescriptionTemplate);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除处方模版", notes = "删除处方模版")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
