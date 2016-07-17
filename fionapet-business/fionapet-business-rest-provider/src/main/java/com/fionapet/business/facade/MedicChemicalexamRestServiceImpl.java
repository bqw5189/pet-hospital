package com.fionapet.business.facade;

import com.fionapet.business.entity.MedicChemicalexam;
import com.fionapet.business.service.CURDService;
import com.fionapet.business.service.MedicChemicalexamService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 化验单明细
 * User: baiqw
 * Date: 14-12-9
 * Time: 下午3:45
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
