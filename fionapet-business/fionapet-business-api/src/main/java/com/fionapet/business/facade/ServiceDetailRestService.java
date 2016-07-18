package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.ServiceDetail;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 服务明细 接口
 *
* Created by tom on 2016-07-18 11:56:10.
 */

@Path("servicedetails")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="servicedetails", description = "服务明细接口")
public interface ServiceDetailRestService extends CURDRestService<ServiceDetail>{
    /**
     * 服务明细
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "服务明细",
            notes = "服务明细列表.")
    RestResult<List<ServiceDetail>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 服务明细 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "服务明细详细信息.")
    RestResult<ServiceDetail> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改服务明细", notes = "添加/修改服务明细")
    RestResult<ServiceDetail> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,ServiceDetail serviceDetail);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除服务明细", notes = "删除服务明细")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
