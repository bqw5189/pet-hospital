package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.InHospitalPrescription;
import com.fionapet.business.service.InHospitalPrescriptionService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-18 15:37:44.
 */
public class InHospitalPrescriptionDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(InHospitalPrescriptionDemoAction.class);
    private InHospitalPrescriptionService inHospitalPrescriptionService;

    public InHospitalPrescriptionService getInHospitalPrescriptionService() {
        return inHospitalPrescriptionService;
    }

    public void setInHospitalPrescriptionService(InHospitalPrescriptionService inHospitalPrescriptionService) {
        this.inHospitalPrescriptionService = inHospitalPrescriptionService;
    }

    public void start() throws Exception {
        List<InHospitalPrescription> inHospitalPrescriptions = inHospitalPrescriptionService.listAll();
        assert(inHospitalPrescriptions != null);
        assert(inHospitalPrescriptions.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(inHospitalPrescriptions));
    }
}
