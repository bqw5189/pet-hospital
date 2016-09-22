package com.fionapet.business.facade;

import io.swagger.annotations.ApiOperation;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;

import javax.ws.rs.HeaderParam;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import java.util.Collection;
import java.util.List;
import java.util.Map;

/**
 * 下拉列表 接口
 *
* Created by tom on 2016-07-31 16:42:53.
 */
public interface SelectRestService {
    @POST
    @Path("/selects")
    @ApiOperation(value = "下拉列表信息",notes = "下拉列表信息.")
    RestResult<Map<String,Collection>> selects(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, Map<String, String> param);
}
