package com.fionapet.business.facade;

import com.fionapet.business.entity.PrescriptionTemplateType;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.PrescriptionTemplateTypeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 处方模版类型
* Created by tom on 2016-07-31 16:42:52.
 */
public class PrescriptionTemplateTypeRestServiceImpl extends RestServiceBase<PrescriptionTemplateType> implements PrescriptionTemplateTypeRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(PrescriptionTemplateTypeRestServiceImpl.class);

    private PrescriptionTemplateTypeService prescriptionTemplateTypeService;

    public PrescriptionTemplateTypeService getPrescriptionTemplateTypeService() {
        return prescriptionTemplateTypeService;
    }

    public void setPrescriptionTemplateTypeService(PrescriptionTemplateTypeService prescriptionTemplateTypeService) {
        this.prescriptionTemplateTypeService = prescriptionTemplateTypeService;
    }

    @Override
    public CURDService<PrescriptionTemplateType> getService() {
        return prescriptionTemplateTypeService;
    }

}
