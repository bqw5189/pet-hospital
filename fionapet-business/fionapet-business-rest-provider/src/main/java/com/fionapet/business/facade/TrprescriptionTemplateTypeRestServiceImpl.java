package com.fionapet.business.facade;

import com.fionapet.business.entity.TrprescriptionTemplateType;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.TrprescriptionTemplateTypeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 药方模版类型
* Created by tom on 2016-07-31 16:42:51.
 */
public class TrprescriptionTemplateTypeRestServiceImpl extends RestServiceBase<TrprescriptionTemplateType> implements TrprescriptionTemplateTypeRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(TrprescriptionTemplateTypeRestServiceImpl.class);

    private TrprescriptionTemplateTypeService trprescriptionTemplateTypeService;

    public TrprescriptionTemplateTypeService getTrprescriptionTemplateTypeService() {
        return trprescriptionTemplateTypeService;
    }

    public void setTrprescriptionTemplateTypeService(TrprescriptionTemplateTypeService trprescriptionTemplateTypeService) {
        this.trprescriptionTemplateTypeService = trprescriptionTemplateTypeService;
    }

    @Override
    public CURDService<TrprescriptionTemplateType> getService() {
        return trprescriptionTemplateTypeService;
    }

}
