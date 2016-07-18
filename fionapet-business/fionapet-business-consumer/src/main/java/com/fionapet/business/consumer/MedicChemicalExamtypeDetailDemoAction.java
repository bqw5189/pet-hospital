package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.MedicChemicalExamtypeDetail;
import com.fionapet.business.service.MedicChemicalExamtypeDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-18 11:00:46.
 */
public class MedicChemicalExamtypeDetailDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(MedicChemicalExamtypeDetailDemoAction.class);
    private MedicChemicalExamtypeDetailService medicChemicalExamtypeDetailService;

    public MedicChemicalExamtypeDetailService getMedicChemicalExamtypeDetailService() {
        return medicChemicalExamtypeDetailService;
    }

    public void setMedicChemicalExamtypeDetailService(MedicChemicalExamtypeDetailService medicChemicalExamtypeDetailService) {
        this.medicChemicalExamtypeDetailService = medicChemicalExamtypeDetailService;
    }

    public void start() throws Exception {
        List<MedicChemicalExamtypeDetail> medicChemicalExamtypeDetails = medicChemicalExamtypeDetailService.listAll();
        assert(medicChemicalExamtypeDetails != null);
        assert(medicChemicalExamtypeDetails.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(medicChemicalExamtypeDetails));
    }
}
