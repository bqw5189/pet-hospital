package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.GestPaidRecord;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 顾客影像记录表 接口
 *
* Created by tom on 2016-07-25 09:32:34.
 */

@Path("gestpaidrecords")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="gestpaidrecords", description = "顾客影像记录表接口")
public interface GestPaidRecordRestService extends CURDRestService<GestPaidRecord>{
    /**
     * 顾客影像记录表
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "顾客影像记录表",
            notes = "顾客影像记录表列表.")
    RestResult<List<GestPaidRecord>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 顾客影像记录表 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "顾客影像记录表详细信息.")
    RestResult<GestPaidRecord> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改顾客影像记录表", notes = "添加/修改顾客影像记录表")
    RestResult<GestPaidRecord> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,GestPaidRecord gestPaidRecord);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除顾客影像记录表", notes = "删除顾客影像记录表")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
