package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.MedicPrescriptionDetail;
import com.fionapet.business.service.MedicPrescriptionDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-18 11:09:23.
 */
public class MedicPrescriptionDetailDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(MedicPrescriptionDetailDemoAction.class);
    private MedicPrescriptionDetailService medicPrescriptionDetailService;

    public MedicPrescriptionDetailService getMedicPrescriptionDetailService() {
        return medicPrescriptionDetailService;
    }

    public void setMedicPrescriptionDetailService(MedicPrescriptionDetailService medicPrescriptionDetailService) {
        this.medicPrescriptionDetailService = medicPrescriptionDetailService;
    }

    public void start() throws Exception {
        List<MedicPrescriptionDetail> medicPrescriptionDetails = medicPrescriptionDetailService.listAll();
        assert(medicPrescriptionDetails != null);
        assert(medicPrescriptionDetails.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(medicPrescriptionDetails));
    }
}
