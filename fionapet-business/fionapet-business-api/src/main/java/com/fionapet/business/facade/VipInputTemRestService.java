package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.VipInputTem;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * VIP信息 接口
 *
* Created by tom on 2016-07-18 11:56:11.
 */

@Path("vipinputtems")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="vipinputtems", description = "VIP信息接口")
public interface VipInputTemRestService extends CURDRestService<VipInputTem>{
    /**
     * VIP信息
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "VIP信息",
            notes = "VIP信息列表.")
    RestResult<List<VipInputTem>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * VIP信息 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "VIP信息详细信息.")
    RestResult<VipInputTem> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改VIP信息", notes = "添加/修改VIP信息")
    RestResult<VipInputTem> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,VipInputTem vipInputTem);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除VIP信息", notes = "删除VIP信息")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
