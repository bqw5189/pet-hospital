package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.PrescriptionTemplate;
import com.fionapet.business.service.PrescriptionTemplateService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-31 16:42:52.
 */
public class PrescriptionTemplateDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(PrescriptionTemplateDemoAction.class);
    private PrescriptionTemplateService prescriptionTemplateService;

    public PrescriptionTemplateService getPrescriptionTemplateService() {
        return prescriptionTemplateService;
    }

    public void setPrescriptionTemplateService(PrescriptionTemplateService prescriptionTemplateService) {
        this.prescriptionTemplateService = prescriptionTemplateService;
    }

    public void start() throws Exception {
        List<PrescriptionTemplate> prescriptionTemplates = prescriptionTemplateService.listAll();
        assert(prescriptionTemplates != null);
        assert(prescriptionTemplates.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(prescriptionTemplates));
    }
}
