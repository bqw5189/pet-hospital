package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.PetRace;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 宠物种类 接口
 *
* Created by tom on 2016-07-31 16:42:52.
 */

@Path("petraces")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="petraces", description = "宠物种类接口")
public interface PetRaceRestService extends CURDRestService<PetRace>{
    /**
     * 宠物种类
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "宠物种类",
            notes = "宠物种类列表.")
    RestResult<List<PetRace>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 宠物种类 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "宠物种类详细信息.")
    RestResult<PetRace> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改宠物种类", notes = "添加/修改宠物种类")
    RestResult<PetRace> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,PetRace petRace);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除宠物种类", notes = "删除宠物种类")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
