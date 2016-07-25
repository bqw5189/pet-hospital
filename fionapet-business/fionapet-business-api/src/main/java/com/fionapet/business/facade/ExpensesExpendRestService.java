package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.ExpensesExpend;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 付出费用表 接口
 *
* Created by tom on 2016-07-25 09:32:34.
 */

@Path("expensesexpends")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="expensesexpends", description = "付出费用表接口")
public interface ExpensesExpendRestService extends CURDRestService<ExpensesExpend>{
    /**
     * 付出费用表
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "付出费用表",
            notes = "付出费用表列表.")
    RestResult<List<ExpensesExpend>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 付出费用表 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "付出费用表详细信息.")
    RestResult<ExpensesExpend> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改付出费用表", notes = "添加/修改付出费用表")
    RestResult<ExpensesExpend> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,ExpensesExpend expensesExpend);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除付出费用表", notes = "删除付出费用表")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
