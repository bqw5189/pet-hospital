package com.fionapet.business.facade;

import cn.fiona.pet.account.facade.AuthRestService;
import cn.fiona.pet.account.facade.RestResult;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fionapet.business.entity.Dealer;
import com.fionapet.business.entity.PageSearch;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.jaxb.SpringDataJaxb;
import org.springframework.data.web.PageableDefault;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 经销商 接口
 *
 * @author baiqw
 */

@Path("dealers")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="dealers", description = "经销商接口")
public interface DealerRestService extends CURDRestService<Dealer>{
    /**
     * 经销商
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "经销商",
            notes = "经销商列表.")
    RestResult<List<Dealer>> list(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token);

    @POST
    @Path("/page")
    @ApiOperation(value = "分页查询经销商",
            notes = "经销商分页.")
    RestResult<Page<Dealer>> page(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, PageSearch pageSearch);

    /**
     * 经销商 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "经销商详细信息.")
    RestResult<Dealer> detail(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改经销商", notes = "添加/修改经销商")
    RestResult<Dealer> create(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token,Dealer dealer);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除经销商", notes = "删除经销商")
    RestResult<String> delete(@HeaderParam(AuthRestService.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
