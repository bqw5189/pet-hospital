package com.fionapet.business.facade;

import cn.fiona.pet.account.facade.AuthRestService;
import cn.fiona.pet.account.facade.RestResult;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.Images;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 图片信息 接口
 *
 * @author baiqw
 */

@Path("imagess")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="imagess", description = "图片信息接口")
public interface ImagesRestService extends CURDRestService<Images>{
    /**
     * 图片信息
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "图片信息",
            notes = "图片信息列表.")
    RestResult<List<Images>> list(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 图片信息 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "图片信息详细信息.")
    RestResult<Images> detail(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改图片信息", notes = "添加/修改图片信息")
    RestResult<Images> create(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token,Images images);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除图片信息", notes = "删除图片信息")
    RestResult<String> delete(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
