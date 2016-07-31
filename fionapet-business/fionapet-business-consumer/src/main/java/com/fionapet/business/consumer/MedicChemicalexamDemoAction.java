package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.MedicChemicalexam;
import com.fionapet.business.service.MedicChemicalexamService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-31 16:42:52.
 */
public class MedicChemicalexamDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(MedicChemicalexamDemoAction.class);
    private MedicChemicalexamService medicChemicalexamService;

    public MedicChemicalexamService getMedicChemicalexamService() {
        return medicChemicalexamService;
    }

    public void setMedicChemicalexamService(MedicChemicalexamService medicChemicalexamService) {
        this.medicChemicalexamService = medicChemicalexamService;
    }

    public void start() throws Exception {
        List<MedicChemicalexam> medicChemicalexams = medicChemicalexamService.listAll();
        assert(medicChemicalexams != null);
        assert(medicChemicalexams.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(medicChemicalexams));
    }
}
