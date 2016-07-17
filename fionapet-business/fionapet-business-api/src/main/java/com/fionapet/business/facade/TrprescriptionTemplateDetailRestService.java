package com.fionapet.business.facade;

import cn.fiona.pet.account.facade.AuthRestService;
import cn.fiona.pet.account.facade.RestResult;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.TrprescriptionTemplateDetail;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 处方模版明细 接口
 *
 * @author baiqw
 */

@Path("trprescriptiontemplatedetails")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="trprescriptiontemplatedetails", description = "处方模版明细接口")
public interface TrprescriptionTemplateDetailRestService extends CURDRestService<TrprescriptionTemplateDetail>{
    /**
     * 处方模版明细
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "处方模版明细",
            notes = "处方模版明细列表.")
    RestResult<List<TrprescriptionTemplateDetail>> list(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 处方模版明细 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "处方模版明细详细信息.")
    RestResult<TrprescriptionTemplateDetail> detail(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改处方模版明细", notes = "添加/修改处方模版明细")
    RestResult<TrprescriptionTemplateDetail> create(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token,TrprescriptionTemplateDetail trprescriptionTemplateDetail);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除处方模版明细", notes = "删除处方模版明细")
    RestResult<String> delete(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}