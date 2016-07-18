package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.MedicSupplies;
import com.fionapet.business.service.MedicSuppliesService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-18 11:00:46.
 */
public class MedicSuppliesDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(MedicSuppliesDemoAction.class);
    private MedicSuppliesService medicSuppliesService;

    public MedicSuppliesService getMedicSuppliesService() {
        return medicSuppliesService;
    }

    public void setMedicSuppliesService(MedicSuppliesService medicSuppliesService) {
        this.medicSuppliesService = medicSuppliesService;
    }

    public void start() throws Exception {
        List<MedicSupplies> medicSuppliess = medicSuppliesService.listAll();
        assert(medicSuppliess != null);
        assert(medicSuppliess.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(medicSuppliess));
    }
}
