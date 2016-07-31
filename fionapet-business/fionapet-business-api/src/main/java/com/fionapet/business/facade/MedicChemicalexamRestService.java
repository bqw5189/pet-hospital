package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.MedicChemicalexam;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 化验单明细 接口
 *
* Created by tom on 2016-07-31 16:42:52.
 */

@Path("medicchemicalexams")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="medicchemicalexams", description = "化验单明细接口")
public interface MedicChemicalexamRestService extends CURDRestService<MedicChemicalexam>{
    /**
     * 化验单明细
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "化验单明细",
            notes = "化验单明细列表.")
    RestResult<List<MedicChemicalexam>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 化验单明细 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "化验单明细详细信息.")
    RestResult<MedicChemicalexam> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改化验单明细", notes = "添加/修改化验单明细")
    RestResult<MedicChemicalexam> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,MedicChemicalexam medicChemicalexam);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除化验单明细", notes = "删除化验单明细")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
