package com.fionapet.business.facade;

import com.fionapet.business.entity.MedicVedioExam;
import com.fionapet.business.service.CURDService;
import com.fionapet.business.service.MedicVedioExamService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 医生影像样例
 * User: baiqw
 * Date: 14-12-9
 * Time: 下午3:45
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
