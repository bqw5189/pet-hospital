package com.fionapet.business.facade;

import org.dubbo.x.entity.PageSearch;
import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.PetSmallRace;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.data.domain.Page;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 宠物品种 接口
 *
* Created by tom on 2016-07-19 13:15:47.
 */

@Path("varieties")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="varieties", description = "宠物品种接口")
public interface PetSmallRaceRestService extends CURDRestService<PetSmallRace>{
    /**
     * 宠物品种
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "宠物品种",
            notes = "宠物品种列表.")
    RestResult<List<PetSmallRace>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 宠物品种 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "宠物品种详细信息.")
    RestResult<PetSmallRace> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改宠物品种", notes = "添加/修改宠物品种")
    RestResult<PetSmallRace> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,PetSmallRace petSmallRace);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除宠物品种", notes = "删除宠物品种")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @Override
    @POST
    @Path("/page")
    RestResult<Page<PetSmallRace>> page(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, PageSearch pageSearch);
}
