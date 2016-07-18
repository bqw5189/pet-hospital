package com.fionapet.business.facade;

import com.fionapet.business.entity.MedicChemicalExamtype;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.MedicChemicalExamtypeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 医生化验实例类型细节表
* Created by tom on 2016-07-18 11:56:10.
 */
public class MedicChemicalExamtypeRestServiceImpl extends RestServiceBase<MedicChemicalExamtype> implements MedicChemicalExamtypeRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(MedicChemicalExamtypeRestServiceImpl.class);

    private MedicChemicalExamtypeService medicChemicalExamtypeService;

    public MedicChemicalExamtypeService getMedicChemicalExamtypeService() {
        return medicChemicalExamtypeService;
    }

    public void setMedicChemicalExamtypeService(MedicChemicalExamtypeService medicChemicalExamtypeService) {
        this.medicChemicalExamtypeService = medicChemicalExamtypeService;
    }

    @Override
    public CURDService<MedicChemicalExamtype> getService() {
        return medicChemicalExamtypeService;
    }

}
