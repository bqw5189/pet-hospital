package com.fionapet.business.facade;

import com.fionapet.business.entity.Gest;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.GestService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 会员
* Created by tom on 2016-07-22 14:21:59.
 */
public class GestRestServiceImpl extends RestServiceBase<Gest> implements GestRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(GestRestServiceImpl.class);

    private GestService gestService;

    public GestService getGestService() {
        return gestService;
    }

    public void setGestService(GestService gestService) {
        this.gestService = gestService;
    }

    @Override
    public CURDService<Gest> getService() {
        return gestService;
    }

}
