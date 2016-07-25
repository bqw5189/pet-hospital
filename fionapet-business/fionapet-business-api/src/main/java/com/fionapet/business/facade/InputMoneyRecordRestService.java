package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.InputMoneyRecord;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 收款记录表 接口
 *
* Created by tom on 2016-07-25 09:32:32.
 */

@Path("inputmoneyrecords")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="inputmoneyrecords", description = "收款记录表接口")
public interface InputMoneyRecordRestService extends CURDRestService<InputMoneyRecord>{
    /**
     * 收款记录表
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "收款记录表",
            notes = "收款记录表列表.")
    RestResult<List<InputMoneyRecord>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 收款记录表 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "收款记录表详细信息.")
    RestResult<InputMoneyRecord> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改收款记录表", notes = "添加/修改收款记录表")
    RestResult<InputMoneyRecord> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,InputMoneyRecord inputMoneyRecord);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除收款记录表", notes = "删除收款记录表")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
