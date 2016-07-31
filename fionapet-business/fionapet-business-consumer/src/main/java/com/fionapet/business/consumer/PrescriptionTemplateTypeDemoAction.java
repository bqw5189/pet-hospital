package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.PrescriptionTemplateType;
import com.fionapet.business.service.PrescriptionTemplateTypeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-31 16:42:52.
 */
public class PrescriptionTemplateTypeDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(PrescriptionTemplateTypeDemoAction.class);
    private PrescriptionTemplateTypeService prescriptionTemplateTypeService;

    public PrescriptionTemplateTypeService getPrescriptionTemplateTypeService() {
        return prescriptionTemplateTypeService;
    }

    public void setPrescriptionTemplateTypeService(PrescriptionTemplateTypeService prescriptionTemplateTypeService) {
        this.prescriptionTemplateTypeService = prescriptionTemplateTypeService;
    }

    public void start() throws Exception {
        List<PrescriptionTemplateType> prescriptionTemplateTypes = prescriptionTemplateTypeService.listAll();
        assert(prescriptionTemplateTypes != null);
        assert(prescriptionTemplateTypes.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(prescriptionTemplateTypes));
    }
}
