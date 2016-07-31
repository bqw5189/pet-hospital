package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.MedicChemicalExamDetail;
import com.fionapet.business.service.MedicChemicalExamDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-31 16:36:25.
 */
public class MedicChemicalExamDetailDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(MedicChemicalExamDetailDemoAction.class);
    private MedicChemicalExamDetailService medicChemicalExamDetailService;

    public MedicChemicalExamDetailService getMedicChemicalExamDetailService() {
        return medicChemicalExamDetailService;
    }

    public void setMedicChemicalExamDetailService(MedicChemicalExamDetailService medicChemicalExamDetailService) {
        this.medicChemicalExamDetailService = medicChemicalExamDetailService;
    }

    public void start() throws Exception {
        List<MedicChemicalExamDetail> medicChemicalExamDetails = medicChemicalExamDetailService.listAll();
        assert(medicChemicalExamDetails != null);
        assert(medicChemicalExamDetails.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(medicChemicalExamDetails));
    }
}
