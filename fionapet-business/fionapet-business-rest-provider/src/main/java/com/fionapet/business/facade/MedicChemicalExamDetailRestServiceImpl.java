package com.fionapet.business.facade;

import com.fionapet.business.entity.MedicChemicalExamDetail;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.MedicChemicalExamDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 化验单明细
* Created by tom on 2016-07-31 16:36:25.
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
