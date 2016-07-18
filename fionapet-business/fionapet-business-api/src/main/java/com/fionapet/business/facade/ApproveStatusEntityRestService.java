package com.fionapet.business.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.ApproveStatusEntity;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 审批状态实体 接口
 *
* Created by tom on 2016-07-18 11:56:11.
 */

@Path("approvestatusentitys")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="approvestatusentitys", description = "审批状态实体接口")
public interface ApproveStatusEntityRestService extends CURDRestService<ApproveStatusEntity>{
    /**
     * 审批状态实体
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "审批状态实体",
            notes = "审批状态实体列表.")
    RestResult<List<ApproveStatusEntity>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 审批状态实体 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "审批状态实体详细信息.")
    RestResult<ApproveStatusEntity> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改审批状态实体", notes = "添加/修改审批状态实体")
    RestResult<ApproveStatusEntity> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,ApproveStatusEntity approveStatusEntity);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除审批状态实体", notes = "删除审批状态实体")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
