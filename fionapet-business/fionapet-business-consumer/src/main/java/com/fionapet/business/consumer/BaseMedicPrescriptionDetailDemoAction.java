package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.BaseMedicPrescriptionDetail;
import com.fionapet.business.service.BaseMedicPrescriptionDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-18 15:56:23.
 */
public class BaseMedicPrescriptionDetailDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(BaseMedicPrescriptionDetailDemoAction.class);
    private BaseMedicPrescriptionDetailService baseMedicPrescriptionDetailService;

    public BaseMedicPrescriptionDetailService getBaseMedicPrescriptionDetailService() {
        return baseMedicPrescriptionDetailService;
    }

    public void setBaseMedicPrescriptionDetailService(BaseMedicPrescriptionDetailService baseMedicPrescriptionDetailService) {
        this.baseMedicPrescriptionDetailService = baseMedicPrescriptionDetailService;
    }

    public void start() throws Exception {
        List<BaseMedicPrescriptionDetail> baseMedicPrescriptionDetails = baseMedicPrescriptionDetailService.listAll();
        assert(baseMedicPrescriptionDetails != null);
        assert(baseMedicPrescriptionDetails.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(baseMedicPrescriptionDetails));
    }
}
