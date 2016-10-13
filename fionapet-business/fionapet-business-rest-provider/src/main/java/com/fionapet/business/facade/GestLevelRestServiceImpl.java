package com.fionapet.business.facade;

import com.fionapet.business.entity.GestLevel;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.GestLevelService;
import org.dubbo.x.util.ConstantVariable;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.ws.rs.HeaderParam;
import java.util.Collection;
import java.util.Map;

/**
 * 会员等级管理
* Created by tom on 2016-07-31 16:36:25.
 */
public class GestLevelRestServiceImpl extends SelectRestServiceBase<GestLevel> implements GestLevelRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(GestLevelRestServiceImpl.class);

    private GestLevelService gestLevelService;

    public GestLevelService getGestLevelService() {
        return gestLevelService;
    }

    public void setGestLevelService(GestLevelService gestLevelService) {
        this.gestLevelService = gestLevelService;
    }

    @Override
    public CURDService<GestLevel> getService() {
        return gestLevelService;
    }
}
