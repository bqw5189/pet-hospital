package cn.fiona.pet.account.facade;

import cn.fiona.pet.account.exception.ApiException;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import io.swagger.annotations.*;
import org.hibernate.validator.constraints.NotEmpty;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;

/**
 * 身份授权 服务 rest api
 *
 * @author baiqw
 */

@Path("/auth")
@Api(value="auth", description = "身份授权")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
public interface AuthRestService {
    /**
     * 登录
     *
     * @param signInVO 登录信息
     * @return RestResult 身份认证成功 data 返回用户token
     */
    @POST
    @Path("login")
    @ApiOperation(value = "登录", notes = "用户登录,登录成功返回token信息",response = RestResult.class)
//    @ApiResponses(value = {
//            @ApiResponse(code = 404, message = "未找到用户信息")
//    })
    RestResult<String> login(@ApiParam(value = "登录信息", required = true) SignInVO signInVO);

}
