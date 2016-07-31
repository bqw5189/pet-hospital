package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.MedicVedioExam;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 医生影像样例 接口
 *
* Created by tom on 2016-07-31 16:36:25.
 */

@Path("medicvedioexams")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="medicvedioexams", description = "医生影像样例接口")
public interface MedicVedioExamRestService extends CURDRestService<MedicVedioExam>{
    /**
     * 医生影像样例
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "医生影像样例",
            notes = "医生影像样例列表.")
    RestResult<List<MedicVedioExam>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 医生影像样例 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "医生影像样例详细信息.")
    RestResult<MedicVedioExam> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改医生影像样例", notes = "添加/修改医生影像样例")
    RestResult<MedicVedioExam> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,MedicVedioExam medicVedioExam);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除医生影像样例", notes = "删除医生影像样例")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
