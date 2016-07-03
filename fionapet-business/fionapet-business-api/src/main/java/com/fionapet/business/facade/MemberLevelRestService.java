package com.fionapet.business.facade;

import cn.fiona.pet.account.facade.AuthRestService;
import cn.fiona.pet.account.facade.RestResult;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.MemberLevel;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 会员级别 接口
 *
 * @author baiqw
 */

@Path("member")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="member", description = "会员级别接口")
public interface MemberLevelRestService extends CURDRestService<MemberLevel>{
    /**
     * 会员级别
     * @return
     */
    @GET
    @Path("levels")
    @ApiOperation(value = "会员级别",
            notes = "会员级别列表.")
    RestResult<List<MemberLevel>> list(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 会员级别 详细信息
     *
     * @return
     */
    @GET
    @Path("levels/{id}")
    @ApiOperation(value = "详细信息",
            notes = "会员级别详细信息.")
    RestResult<MemberLevel> detail(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("levels")
    @ApiOperation(value = "添加/修改会员级别", notes = "添加/修改会员级别")
    RestResult<MemberLevel> create(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token,MemberLevel memberLevel);

    @DELETE
    @Path("levels/{id}")
    @ApiOperation(value = "删除会员级别", notes = "删除会员级别")
    RestResult<String> delete(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
