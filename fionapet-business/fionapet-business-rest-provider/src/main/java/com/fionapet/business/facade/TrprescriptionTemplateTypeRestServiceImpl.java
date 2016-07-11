package com.fionapet.business.facade;

import com.fionapet.business.entity.TrprescriptionTemplateType;
import com.fionapet.business.service.CURDService;
import com.fionapet.business.service.TrprescriptionTemplateTypeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 处方模版类型
 * User: baiqw
 * Date: 14-12-9
 * Time: 下午3:45
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
