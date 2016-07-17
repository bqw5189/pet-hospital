package com.fionapet.business.facade;

import cn.fiona.pet.account.facade.AuthRestService;
import cn.fiona.pet.account.facade.RestResult;
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
 * @author baiqw
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
    RestResult<List<MedicVedioExam>> list(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 医生影像样例 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "医生影像样例详细信息.")
    RestResult<MedicVedioExam> detail(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改医生影像样例", notes = "添加/修改医生影像样例")
    RestResult<MedicVedioExam> create(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token,MedicVedioExam medicVedioExam);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除医生影像样例", notes = "删除医生影像样例")
    RestResult<String> delete(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
