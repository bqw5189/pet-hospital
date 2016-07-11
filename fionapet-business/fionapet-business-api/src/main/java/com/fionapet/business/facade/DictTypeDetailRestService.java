package com.fionapet.business.facade;

import cn.fiona.pet.account.facade.AuthRestService;
import cn.fiona.pet.account.facade.RestResult;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.DictTypeDetail;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 宠物字典类型明细 接口
 *
 * @author baiqw
 */

@Path("dicttypedetails")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="dicttypedetails", description = "宠物字典类型明细接口")
public interface DictTypeDetailRestService extends CURDRestService<DictTypeDetail>{
    /**
     * 宠物字典类型明细
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "宠物字典类型明细",
            notes = "宠物字典类型明细列表.")
    RestResult<List<DictTypeDetail>> list(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 宠物字典类型明细 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "宠物字典类型明细详细信息.")
    RestResult<DictTypeDetail> detail(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改宠物字典类型明细", notes = "添加/修改宠物字典类型明细")
    RestResult<DictTypeDetail> create(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token,DictTypeDetail dictTypeDetail);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除宠物字典类型明细", notes = "删除宠物字典类型明细")
    RestResult<String> delete(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
