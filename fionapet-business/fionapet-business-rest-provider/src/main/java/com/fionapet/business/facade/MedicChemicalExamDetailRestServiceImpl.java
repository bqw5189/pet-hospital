package com.fionapet.business.facade;

import com.fionapet.business.entity.MedicChemicalExamDetail;
import com.fionapet.business.service.CURDService;
import com.fionapet.business.service.MedicChemicalExamDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 化验单明细
 * User: baiqw
 * Date: 14-12-9
 * Time: 下午3:45
 */
public class MedicChemicalExamDetailRestServiceImpl extends RestServiceBase<MedicChemicalExamDetail> implements MedicChemicalExamDetailRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(MedicChemicalExamDetailRestServiceImpl.class);

    private MedicChemicalExamDetailService medicChemicalExamDetailService;

    public MedicChemicalExamDetailService getMedicChemicalExamDetailService() {
        return medicChemicalExamDetailService;
    }

    public void setMedicChemicalExamDetailService(MedicChemicalExamDetailService medicChemicalExamDetailService) {
        this.medicChemicalExamDetailService = medicChemicalExamDetailService;
    }

    @Override
    public CURDService<MedicChemicalExamDetail> getService() {
        return medicChemicalExamDetailService;
    }

}
