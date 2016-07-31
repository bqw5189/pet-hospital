package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.BusinesCate;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 业务类型表 接口
 *
* Created by tom on 2016-07-31 16:36:25.
 */

@Path("businescates")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="businescates", description = "业务类型表接口")
public interface BusinesCateRestService extends CURDRestService<BusinesCate>{
    /**
     * 业务类型表
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "业务类型表",
            notes = "业务类型表列表.")
    RestResult<List<BusinesCate>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 业务类型表 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "业务类型表详细信息.")
    RestResult<BusinesCate> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改业务类型表", notes = "添加/修改业务类型表")
    RestResult<BusinesCate> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,BusinesCate businesCate);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除业务类型表", notes = "删除业务类型表")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
