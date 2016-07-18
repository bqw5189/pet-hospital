package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.MedicPrescription;
import com.fionapet.business.service.MedicPrescriptionService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-18 11:00:46.
 */
public class MedicPrescriptionDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(MedicPrescriptionDemoAction.class);
    private MedicPrescriptionService medicPrescriptionService;

    public MedicPrescriptionService getMedicPrescriptionService() {
        return medicPrescriptionService;
    }

    public void setMedicPrescriptionService(MedicPrescriptionService medicPrescriptionService) {
        this.medicPrescriptionService = medicPrescriptionService;
    }

    public void start() throws Exception {
        List<MedicPrescription> medicPrescriptions = medicPrescriptionService.listAll();
        assert(medicPrescriptions != null);
        assert(medicPrescriptions.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(medicPrescriptions));
    }
}
