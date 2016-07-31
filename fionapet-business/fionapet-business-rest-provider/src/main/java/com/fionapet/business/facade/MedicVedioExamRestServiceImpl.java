package com.fionapet.business.facade;

import com.fionapet.business.entity.MedicVedioExam;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.MedicVedioExamService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 医生影像样例
* Created by tom on 2016-07-31 16:36:25.
 */
public class MedicVedioExamRestServiceImpl extends RestServiceBase<MedicVedioExam> implements MedicVedioExamRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(MedicVedioExamRestServiceImpl.class);

    private MedicVedioExamService medicVedioExamService;

    public MedicVedioExamService getMedicVedioExamService() {
        return medicVedioExamService;
    }

    public void setMedicVedioExamService(MedicVedioExamService medicVedioExamService) {
        this.medicVedioExamService = medicVedioExamService;
    }

    @Override
    public CURDService<MedicVedioExam> getService() {
        return medicVedioExamService;
    }

}
