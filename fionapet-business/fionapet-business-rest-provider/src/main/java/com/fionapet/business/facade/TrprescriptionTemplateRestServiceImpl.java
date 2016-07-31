package com.fionapet.business.facade;

import com.fionapet.business.entity.TrprescriptionTemplate;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.TrprescriptionTemplateService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 药方模版
* Created by tom on 2016-07-31 16:36:25.
 */
public class TrprescriptionTemplateRestServiceImpl extends RestServiceBase<TrprescriptionTemplate> implements TrprescriptionTemplateRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(TrprescriptionTemplateRestServiceImpl.class);

    private TrprescriptionTemplateService trprescriptionTemplateService;

    public TrprescriptionTemplateService getTrprescriptionTemplateService() {
        return trprescriptionTemplateService;
    }

    public void setTrprescriptionTemplateService(TrprescriptionTemplateService trprescriptionTemplateService) {
        this.trprescriptionTemplateService = trprescriptionTemplateService;
    }

    @Override
    public CURDService<TrprescriptionTemplate> getService() {
        return trprescriptionTemplateService;
    }

}
