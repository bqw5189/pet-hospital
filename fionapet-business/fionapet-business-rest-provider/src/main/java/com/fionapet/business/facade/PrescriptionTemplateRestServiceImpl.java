package com.fionapet.business.facade;

import com.fionapet.business.entity.PrescriptionTemplate;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.PrescriptionTemplateService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 处方模版
* Created by tom on 2016-07-31 16:42:52.
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
