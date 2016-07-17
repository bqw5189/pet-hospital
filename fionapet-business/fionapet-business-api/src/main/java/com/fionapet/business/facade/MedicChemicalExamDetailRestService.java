package com.fionapet.business.facade;

import cn.fiona.pet.account.facade.AuthRestService;
import cn.fiona.pet.account.facade.RestResult;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.MedicChemicalExamDetail;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 化验单明细 接口
 *
 * @author baiqw
 */

@Path("medicchemicalexamdetails")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="medicchemicalexamdetails", description = "化验单明细接口")
public interface MedicChemicalExamDetailRestService extends CURDRestService<MedicChemicalExamDetail>{
    /**
     * 化验单明细
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "化验单明细",
            notes = "化验单明细列表.")
    RestResult<List<MedicChemicalExamDetail>> list(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 化验单明细 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "化验单明细详细信息.")
    RestResult<MedicChemicalExamDetail> detail(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改化验单明细", notes = "添加/修改化验单明细")
    RestResult<MedicChemicalExamDetail> create(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token,MedicChemicalExamDetail medicChemicalExamDetail);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除化验单明细", notes = "删除化验单明细")
    RestResult<String> delete(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
