package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.BaseMedicPrescription;
import com.fionapet.business.service.BaseMedicPrescriptionService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-18 15:56:24.
 */
public class BaseMedicPrescriptionDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(BaseMedicPrescriptionDemoAction.class);
    private BaseMedicPrescriptionService baseMedicPrescriptionService;

    public BaseMedicPrescriptionService getBaseMedicPrescriptionService() {
        return baseMedicPrescriptionService;
    }

    public void setBaseMedicPrescriptionService(BaseMedicPrescriptionService baseMedicPrescriptionService) {
        this.baseMedicPrescriptionService = baseMedicPrescriptionService;
    }

    public void start() throws Exception {
        List<BaseMedicPrescription> baseMedicPrescriptions = baseMedicPrescriptionService.listAll();
        assert(baseMedicPrescriptions != null);
        assert(baseMedicPrescriptions.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(baseMedicPrescriptions));
    }
}
