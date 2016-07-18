package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.MedicVaccine;
import com.fionapet.business.service.MedicVaccineService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-18 11:00:46.
 */
public class MedicVaccineDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(MedicVaccineDemoAction.class);
    private MedicVaccineService medicVaccineService;

    public MedicVaccineService getMedicVaccineService() {
        return medicVaccineService;
    }

    public void setMedicVaccineService(MedicVaccineService medicVaccineService) {
        this.medicVaccineService = medicVaccineService;
    }

    public void start() throws Exception {
        List<MedicVaccine> medicVaccines = medicVaccineService.listAll();
        assert(medicVaccines != null);
        assert(medicVaccines.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(medicVaccines));
    }
}
