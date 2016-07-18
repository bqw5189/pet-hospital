package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.MedicChemicalExamtypeDetail;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 医生化验实例类型细节表 接口
 *
* Created by tom on 2016-07-18 11:56:09.
 */

@Path("medicchemicalexamtypedetails")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="medicchemicalexamtypedetails", description = "医生化验实例类型细节表接口")
public interface MedicChemicalExamtypeDetailRestService extends CURDRestService<MedicChemicalExamtypeDetail>{
    /**
     * 医生化验实例类型细节表
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "医生化验实例类型细节表",
            notes = "医生化验实例类型细节表列表.")
    RestResult<List<MedicChemicalExamtypeDetail>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 医生化验实例类型细节表 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "医生化验实例类型细节表详细信息.")
    RestResult<MedicChemicalExamtypeDetail> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改医生化验实例类型细节表", notes = "添加/修改医生化验实例类型细节表")
    RestResult<MedicChemicalExamtypeDetail> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,MedicChemicalExamtypeDetail medicChemicalExamtypeDetail);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除医生化验实例类型细节表", notes = "删除医生化验实例类型细节表")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
