package com.fionapet.business.facade;

import com.fionapet.business.entity.PrescriptionTemplateType;
import com.fionapet.business.service.CURDService;
import com.fionapet.business.service.PrescriptionTemplateTypeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 处方模版类型
 * User: baiqw
 * Date: 14-12-9
 * Time: 下午3:45
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
