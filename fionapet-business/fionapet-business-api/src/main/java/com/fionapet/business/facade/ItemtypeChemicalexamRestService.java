package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.ItemtypeChemicalexam;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 类型化验实例表 接口
 *
* Created by tom on 2016-07-25 09:32:32.
 */

@Path("itemtypechemicalexams")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="itemtypechemicalexams", description = "类型化验实例表接口")
public interface ItemtypeChemicalexamRestService extends CURDRestService<ItemtypeChemicalexam>{
    /**
     * 类型化验实例表
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "类型化验实例表",
            notes = "类型化验实例表列表.")
    RestResult<List<ItemtypeChemicalexam>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 类型化验实例表 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "类型化验实例表详细信息.")
    RestResult<ItemtypeChemicalexam> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改类型化验实例表", notes = "添加/修改类型化验实例表")
    RestResult<ItemtypeChemicalexam> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,ItemtypeChemicalexam itemtypeChemicalexam);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除类型化验实例表", notes = "删除类型化验实例表")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
