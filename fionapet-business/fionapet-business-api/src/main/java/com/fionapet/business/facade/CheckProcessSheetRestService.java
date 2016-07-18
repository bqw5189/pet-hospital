package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.CheckProcessSheet;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 检查处理单据 接口
 *
* Created by tom on 2016-07-18 11:56:10.
 */

@Path("checkprocesssheets")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="checkprocesssheets", description = "检查处理单据接口")
public interface CheckProcessSheetRestService extends CURDRestService<CheckProcessSheet>{
    /**
     * 检查处理单据
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "检查处理单据",
            notes = "检查处理单据列表.")
    RestResult<List<CheckProcessSheet>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 检查处理单据 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "检查处理单据详细信息.")
    RestResult<CheckProcessSheet> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改检查处理单据", notes = "添加/修改检查处理单据")
    RestResult<CheckProcessSheet> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,CheckProcessSheet checkProcessSheet);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除检查处理单据", notes = "删除检查处理单据")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
