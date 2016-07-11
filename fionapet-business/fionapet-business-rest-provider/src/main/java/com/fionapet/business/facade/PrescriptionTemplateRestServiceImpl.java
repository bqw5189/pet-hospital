package com.fionapet.business.facade;

import com.fionapet.business.entity.PrescriptionTemplate;
import com.fionapet.business.service.CURDService;
import com.fionapet.business.service.PrescriptionTemplateService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 处方模版明细
 * User: baiqw
 * Date: 14-12-9
 * Time: 下午3:45
 */
public class PrescriptionTemplateRestServiceImpl extends RestServiceBase<PrescriptionTemplate> implements PrescriptionTemplateRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(PrescriptionTemplateRestServiceImpl.class);

    private PrescriptionTemplateService prescriptionTemplateService;

    public PrescriptionTemplateService getPrescriptionTemplateService() {
        return prescriptionTemplateService;
    }

    public void setPrescriptionTemplateService(PrescriptionTemplateService prescriptionTemplateService) {
        this.prescriptionTemplateService = prescriptionTemplateService;
    }

    @Override
    public CURDService<PrescriptionTemplate> getService() {
        return prescriptionTemplateService;
    }

}
