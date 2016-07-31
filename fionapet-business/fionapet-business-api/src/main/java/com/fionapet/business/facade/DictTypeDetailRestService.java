package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.DictTypeDetail;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 字典类型明细 接口
 *
* Created by tom on 2016-07-31 16:42:53.
 */

@Path("dicttypedetails")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="dicttypedetails", description = "字典类型明细接口")
public interface DictTypeDetailRestService extends CURDRestService<DictTypeDetail>{
    /**
     * 字典类型明细
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "字典类型明细",
            notes = "字典类型明细列表.")
    RestResult<List<DictTypeDetail>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 字典类型明细 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "字典类型明细详细信息.")
    RestResult<DictTypeDetail> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改字典类型明细", notes = "添加/修改字典类型明细")
    RestResult<DictTypeDetail> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,DictTypeDetail dictTypeDetail);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除字典类型明细", notes = "删除字典类型明细")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
