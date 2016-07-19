package com.fionapet.business.facade;

import org.dubbo.x.entity.PageSearch;
import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.Pet;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.data.domain.Page;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 宠物 接口
 *
* Created by tom on 2016-07-19 10:31:06.
 */

@Path("pets")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="pets", description = "宠物接口")
public interface PetRestService extends CURDRestService<Pet>{
    /**
     * 宠物
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "宠物",
            notes = "宠物列表.")
    RestResult<List<Pet>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    @Override
    @POST
    @Path("/page")
    @ApiOperation(value = "分页")
    RestResult<Page<Pet>> page(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, PageSearch pageSearch);

    /**
     * 宠物 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "宠物详细信息.")
    RestResult<Pet> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改宠物", notes = "添加/修改宠物")
    RestResult<Pet> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,Pet pet);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除宠物", notes = "删除宠物")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
