package com.fionapet.business.facade;

import com.fionapet.business.entity.MedicChemicalexam;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.MedicChemicalexamService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 化验单明细
* Created by tom on 2016-07-31 16:42:52.
 */
public class MedicChemicalexamRestServiceImpl extends RestServiceBase<MedicChemicalexam> implements MedicChemicalexamRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(MedicChemicalexamRestServiceImpl.class);

    private MedicChemicalexamService medicChemicalexamService;

    public MedicChemicalexamService getMedicChemicalexamService() {
        return medicChemicalexamService;
    }

    public void setMedicChemicalexamService(MedicChemicalexamService medicChemicalexamService) {
        this.medicChemicalexamService = medicChemicalexamService;
    }

    @Override
    public CURDService<MedicChemicalexam> getService() {
        return medicChemicalexamService;
    }

}
