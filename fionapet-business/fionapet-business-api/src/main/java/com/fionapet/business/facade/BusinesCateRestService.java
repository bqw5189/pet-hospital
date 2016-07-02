package com.fionapet.business.facade;

import cn.fiona.pet.account.facade.AuthRestService;
import cn.fiona.pet.account.facade.RestResult;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.BusinesCate;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 业务类型 接口
 *
 * @author bailj
 */

@Path("itemcates")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="itemcates", description = "业务类型")
public interface BusinesCateRestService extends CURDRestService<BusinesCate>{
    /**
     * 业务类型
     * @return
     */
    @GET
    @Path("businescates")
    @ApiOperation(value = "业务类型",
            notes = "业务类型列表.")
    RestResult<List<BusinesCate>> list(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 业务类型 详细信息
     *
     * @return
     */
    @GET
    @Path("businescates/{id}")
    @ApiOperation(value = "详细信息",
            notes = "仓库详细信息.")
    RestResult<BusinesCate> detail(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("businescates")
    @ApiOperation(value = "添加/修改业务类型", notes = "添加/修改业务类型")
    RestResult<BusinesCate> create(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, BusinesCate businesCate);

    @DELETE
    @Path("businescates/{id}")
    @ApiOperation(value = "删除业务类型", notes = "删除业务类型")
    RestResult<String> delete(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
