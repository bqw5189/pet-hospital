package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.Dealer;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 代理商 接口
 *
* Created by tom on 2016-07-31 16:42:51.
 */

@Path("dealers")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="dealers", description = "代理商接口")
public interface DealerRestService extends CURDRestService<Dealer>{
    /**
     * 代理商
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "代理商",
            notes = "代理商列表.")
    RestResult<List<Dealer>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 代理商 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "代理商详细信息.")
    RestResult<Dealer> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改代理商", notes = "添加/修改代理商")
    RestResult<Dealer> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,Dealer dealer);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除代理商", notes = "删除代理商")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
