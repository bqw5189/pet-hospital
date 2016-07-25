package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.FifoLog;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 进库出库日志 接口
 *
* Created by tom on 2016-07-25 09:32:31.
 */

@Path("fifologs")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="fifologs", description = "进库出库日志接口")
public interface FifoLogRestService extends CURDRestService<FifoLog>{
    /**
     * 进库出库日志
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "进库出库日志",
            notes = "进库出库日志列表.")
    RestResult<List<FifoLog>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 进库出库日志 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "进库出库日志详细信息.")
    RestResult<FifoLog> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改进库出库日志", notes = "添加/修改进库出库日志")
    RestResult<FifoLog> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,FifoLog fifoLog);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除进库出库日志", notes = "删除进库出库日志")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
