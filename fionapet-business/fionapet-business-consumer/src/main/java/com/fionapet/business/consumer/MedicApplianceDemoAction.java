package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.MedicAppliance;
import com.fionapet.business.service.MedicApplianceService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-25 09:32:34.
 */
public class MedicApplianceDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(MedicApplianceDemoAction.class);
    private MedicApplianceService medicApplianceService;

    public MedicApplianceService getMedicApplianceService() {
        return medicApplianceService;
    }

    public void setMedicApplianceService(MedicApplianceService medicApplianceService) {
        this.medicApplianceService = medicApplianceService;
    }

    public void start() throws Exception {
        List<MedicAppliance> medicAppliances = medicApplianceService.listAll();
        assert(medicAppliances != null);
        assert(medicAppliances.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(medicAppliances));
    }
}
