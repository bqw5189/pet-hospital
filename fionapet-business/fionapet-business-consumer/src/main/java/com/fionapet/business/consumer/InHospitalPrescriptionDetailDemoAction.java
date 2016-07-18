package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.InHospitalPrescriptionDetail;
import com.fionapet.business.service.InHospitalPrescriptionDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-18 15:37:44.
 */
public class InHospitalPrescriptionDetailDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(InHospitalPrescriptionDetailDemoAction.class);
    private InHospitalPrescriptionDetailService inHospitalPrescriptionDetailService;

    public InHospitalPrescriptionDetailService getInHospitalPrescriptionDetailService() {
        return inHospitalPrescriptionDetailService;
    }

    public void setInHospitalPrescriptionDetailService(InHospitalPrescriptionDetailService inHospitalPrescriptionDetailService) {
        this.inHospitalPrescriptionDetailService = inHospitalPrescriptionDetailService;
    }

    public void start() throws Exception {
        List<InHospitalPrescriptionDetail> inHospitalPrescriptionDetails = inHospitalPrescriptionDetailService.listAll();
        assert(inHospitalPrescriptionDetails != null);
        assert(inHospitalPrescriptionDetails.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(inHospitalPrescriptionDetails));
    }
}
