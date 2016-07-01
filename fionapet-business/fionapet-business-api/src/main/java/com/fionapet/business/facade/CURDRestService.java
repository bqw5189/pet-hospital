package com.fionapet.business.facade;

import cn.fiona.pet.account.facade.AuthRestService;
import cn.fiona.pet.account.facade.RestResult;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.PetRace;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * rest 接口
 *
 * @author baiqw
 */

public interface CURDRestService<T> {

    @GET
    @ApiOperation(value = "列表")
    RestResult<List<T>> list(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token);

    @GET
    @ApiOperation(value = "详细信息")
    RestResult<T> detail(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @ApiOperation(value = "添加/修改")
    RestResult<T> create(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, PetRace petRace);

    @DELETE
    @ApiOperation(value = "删除")
    RestResult<String> delete(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
