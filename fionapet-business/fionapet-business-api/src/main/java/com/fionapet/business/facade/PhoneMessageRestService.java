package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.PhoneMessage;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 电话信息表 接口
 *
* Created by tom on 2016-07-18 11:56:08.
 */

@Path("phonemessages")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="phonemessages", description = "电话信息表接口")
public interface PhoneMessageRestService extends CURDRestService<PhoneMessage>{
    /**
     * 电话信息表
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "电话信息表",
            notes = "电话信息表列表.")
    RestResult<List<PhoneMessage>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 电话信息表 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "电话信息表详细信息.")
    RestResult<PhoneMessage> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改电话信息表", notes = "添加/修改电话信息表")
    RestResult<PhoneMessage> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,PhoneMessage phoneMessage);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除电话信息表", notes = "删除电话信息表")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
