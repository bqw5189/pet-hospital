package com.fionapet.business.facade;

import com.fionapet.business.entity.MedicChemicalExamtypeDetail;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.MedicChemicalExamtypeDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 医生化验实例类型细节表
* Created by tom on 2016-07-18 11:56:09.
 */
public class MedicChemicalExamtypeDetailRestServiceImpl extends RestServiceBase<MedicChemicalExamtypeDetail> implements MedicChemicalExamtypeDetailRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(MedicChemicalExamtypeDetailRestServiceImpl.class);

    private MedicChemicalExamtypeDetailService medicChemicalExamtypeDetailService;

    public MedicChemicalExamtypeDetailService getMedicChemicalExamtypeDetailService() {
        return medicChemicalExamtypeDetailService;
    }

    public void setMedicChemicalExamtypeDetailService(MedicChemicalExamtypeDetailService medicChemicalExamtypeDetailService) {
        this.medicChemicalExamtypeDetailService = medicChemicalExamtypeDetailService;
    }

    @Override
    public CURDService<MedicChemicalExamtypeDetail> getService() {
        return medicChemicalExamtypeDetailService;
    }

}
