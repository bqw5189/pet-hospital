package com.fionapet.business.facade;

import com.fionapet.business.service.SelectService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.facade.RestServiceBase;
import org.dubbo.x.util.ConstantVariable;

import javax.ws.rs.HeaderParam;
import java.util.Collection;
import java.util.List;
import java.util.Map;

/**
 * Created by tom on 16/9/18.
 */
public abstract class SelectRestServiceBase<T> extends RestServiceBase<T> implements SelectRestService{
    @Override
    public RestResult<Map<String, Collection>> selects(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, Map<String, String> param) {
        SelectService selectService = (SelectService)this.getService();
        return RestResult.OK(selectService.selects(param));
    }
}
