package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.InHospitalRecordDetail;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 医院记录明细表 接口
 *
* Created by tom on 2016-07-25 09:32:31.
 */

@Path("inhospitalrecorddetails")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="inhospitalrecorddetails", description = "医院记录明细表接口")
public interface InHospitalRecordDetailRestService extends CURDRestService<InHospitalRecordDetail>{
    /**
     * 医院记录明细表
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "医院记录明细表",
            notes = "医院记录明细表列表.")
    RestResult<List<InHospitalRecordDetail>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 医院记录明细表 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "医院记录明细表详细信息.")
    RestResult<InHospitalRecordDetail> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改医院记录明细表", notes = "添加/修改医院记录明细表")
    RestResult<InHospitalRecordDetail> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,InHospitalRecordDetail inHospitalRecordDetail);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除医院记录明细表", notes = "删除医院记录明细表")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
