package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.MedicMedictreatRecord;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 医生处理记录 接口
 *
* Created by tom on 2016-07-18 11:56:10.
 */

@Path("medicmedictreatrecords")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="medicmedictreatrecords", description = "医生处理记录接口")
public interface MedicMedictreatRecordRestService extends CURDRestService<MedicMedictreatRecord>{
    /**
     * 医生处理记录
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "医生处理记录",
            notes = "医生处理记录列表.")
    RestResult<List<MedicMedictreatRecord>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 医生处理记录 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "医生处理记录详细信息.")
    RestResult<MedicMedictreatRecord> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改医生处理记录", notes = "添加/修改医生处理记录")
    RestResult<MedicMedictreatRecord> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,MedicMedictreatRecord medicMedictreatRecord);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除医生处理记录", notes = "删除医生处理记录")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
