package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.FinanceSettleAccountsDetail;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 资金账户明细表 接口
 *
* Created by tom on 2016-07-25 09:32:33.
 */

@Path("financesettleaccountsdetails")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="financesettleaccountsdetails", description = "资金账户明细表接口")
public interface FinanceSettleAccountsDetailRestService extends CURDRestService<FinanceSettleAccountsDetail>{
    /**
     * 资金账户明细表
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "资金账户明细表",
            notes = "资金账户明细表列表.")
    RestResult<List<FinanceSettleAccountsDetail>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 资金账户明细表 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "资金账户明细表详细信息.")
    RestResult<FinanceSettleAccountsDetail> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改资金账户明细表", notes = "添加/修改资金账户明细表")
    RestResult<FinanceSettleAccountsDetail> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,FinanceSettleAccountsDetail financeSettleAccountsDetail);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除资金账户明细表", notes = "删除资金账户明细表")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
