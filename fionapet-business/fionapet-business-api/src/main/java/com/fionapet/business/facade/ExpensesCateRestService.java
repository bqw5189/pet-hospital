package com.fionapet.business.facade;

import cn.fiona.pet.account.facade.AuthRestService;
import cn.fiona.pet.account.facade.RestResult;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.ExpensesCate;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 费用类型 接口
 *
 * @author baiqw
 */

@Path("expensescates")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="expensescates", description = "费用类型接口")
public interface ExpensesCateRestService extends CURDRestService<ExpensesCate>{
    /**
     * 费用类型
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "费用类型",
            notes = "费用类型列表.")
    RestResult<List<ExpensesCate>> list(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 费用类型 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "费用类型详细信息.")
    RestResult<ExpensesCate> detail(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改费用类型", notes = "添加/修改费用类型")
    RestResult<ExpensesCate> create(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token,ExpensesCate expensesCate);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除费用类型", notes = "删除费用类型")
    RestResult<String> delete(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
