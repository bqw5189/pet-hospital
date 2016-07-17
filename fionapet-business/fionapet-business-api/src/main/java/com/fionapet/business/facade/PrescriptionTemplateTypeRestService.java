package com.fionapet.business.facade;

import cn.fiona.pet.account.facade.AuthRestService;
import cn.fiona.pet.account.facade.RestResult;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.PrescriptionTemplateType;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 处方模版类型 接口
 *
 * @author baiqw
 */

@Path("prescriptiontemplatetypes")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="prescriptiontemplatetypes", description = "处方模版类型接口")
public interface PrescriptionTemplateTypeRestService extends CURDRestService<PrescriptionTemplateType>{
    /**
     * 处方模版类型
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "处方模版类型",
            notes = "处方模版类型列表.")
    RestResult<List<PrescriptionTemplateType>> list(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 处方模版类型 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "处方模版类型详细信息.")
    RestResult<PrescriptionTemplateType> detail(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改处方模版类型", notes = "添加/修改处方模版类型")
    RestResult<PrescriptionTemplateType> create(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token,PrescriptionTemplateType prescriptionTemplateType);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除处方模版类型", notes = "删除处方模版类型")
    RestResult<String> delete(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}