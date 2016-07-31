package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.ChemicalExamCate;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 化验样例类型 接口
 *
* Created by tom on 2016-07-31 16:42:53.
 */

@Path("chemicalexamcates")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="chemicalexamcates", description = "化验样例类型接口")
public interface ChemicalExamCateRestService extends CURDRestService<ChemicalExamCate>{
    /**
     * 化验样例类型
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "化验样例类型",
            notes = "化验样例类型列表.")
    RestResult<List<ChemicalExamCate>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 化验样例类型 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "化验样例类型详细信息.")
    RestResult<ChemicalExamCate> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改化验样例类型", notes = "添加/修改化验样例类型")
    RestResult<ChemicalExamCate> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,ChemicalExamCate chemicalExamCate);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除化验样例类型", notes = "删除化验样例类型")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
