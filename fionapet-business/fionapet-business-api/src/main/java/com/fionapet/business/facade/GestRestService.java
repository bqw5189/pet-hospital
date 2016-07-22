package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.Gest;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 会员 接口
 *
* Created by tom on 2016-07-22 14:21:59.
 */

@Path("gests")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="gests", description = "会员接口")
public interface GestRestService extends CURDRestService<Gest>{
    /**
     * 会员
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "会员",
            notes = "会员列表.")
    RestResult<List<Gest>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 会员 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "会员详细信息.")
    RestResult<Gest> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改会员", notes = "添加/修改会员")
    RestResult<Gest> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,Gest gest);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除会员", notes = "删除会员")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
