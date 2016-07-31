package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.PrescriptionTemplateDetail;
import com.fionapet.business.service.PrescriptionTemplateDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-31 16:42:51.
 */
public class PrescriptionTemplateDetailDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(PrescriptionTemplateDetailDemoAction.class);
    private PrescriptionTemplateDetailService prescriptionTemplateDetailService;

    public PrescriptionTemplateDetailService getPrescriptionTemplateDetailService() {
        return prescriptionTemplateDetailService;
    }

    public void setPrescriptionTemplateDetailService(PrescriptionTemplateDetailService prescriptionTemplateDetailService) {
        this.prescriptionTemplateDetailService = prescriptionTemplateDetailService;
    }

    public void start() throws Exception {
        List<PrescriptionTemplateDetail> prescriptionTemplateDetails = prescriptionTemplateDetailService.listAll();
        assert(prescriptionTemplateDetails != null);
        assert(prescriptionTemplateDetails.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(prescriptionTemplateDetails));
    }
}
