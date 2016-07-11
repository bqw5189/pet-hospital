package com.fionapet.business.facade;

import com.fionapet.business.entity.Gest;
import com.fionapet.business.service.CURDService;
import com.fionapet.business.service.GestService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 宠物主人
 * User: baiqw
 * Date: 14-12-9
 * Time: 下午3:45
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
