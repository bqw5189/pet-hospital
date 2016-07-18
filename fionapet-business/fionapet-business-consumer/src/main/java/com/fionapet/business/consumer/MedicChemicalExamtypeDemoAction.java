package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.MedicChemicalExamtype;
import com.fionapet.business.service.MedicChemicalExamtypeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-18 11:09:24.
 */
public class MedicChemicalExamtypeDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(MedicChemicalExamtypeDemoAction.class);
    private MedicChemicalExamtypeService medicChemicalExamtypeService;

    public MedicChemicalExamtypeService getMedicChemicalExamtypeService() {
        return medicChemicalExamtypeService;
    }

    public void setMedicChemicalExamtypeService(MedicChemicalExamtypeService medicChemicalExamtypeService) {
        this.medicChemicalExamtypeService = medicChemicalExamtypeService;
    }

    public void start() throws Exception {
        List<MedicChemicalExamtype> medicChemicalExamtypes = medicChemicalExamtypeService.listAll();
        assert(medicChemicalExamtypes != null);
        assert(medicChemicalExamtypes.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(medicChemicalExamtypes));
    }
}
