package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.MedicVedioExam;
import com.fionapet.business.service.MedicVedioExamService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-31 16:36:25.
 */
public class MedicVedioExamDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(MedicVedioExamDemoAction.class);
    private MedicVedioExamService medicVedioExamService;

    public MedicVedioExamService getMedicVedioExamService() {
        return medicVedioExamService;
    }

    public void setMedicVedioExamService(MedicVedioExamService medicVedioExamService) {
        this.medicVedioExamService = medicVedioExamService;
    }

    public void start() throws Exception {
        List<MedicVedioExam> medicVedioExams = medicVedioExamService.listAll();
        assert(medicVedioExams != null);
        assert(medicVedioExams.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(medicVedioExams));
    }
}
