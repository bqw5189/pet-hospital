package com.fionapet.business.facade;

import com.fionapet.business.entity.MedicVaccine;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.MedicVaccineService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 育苗表
* Created by tom on 2016-07-18 11:56:09.
 */
public class MedicVaccineRestServiceImpl extends RestServiceBase<MedicVaccine> implements MedicVaccineRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(MedicVaccineRestServiceImpl.class);

    private MedicVaccineService medicVaccineService;

    public MedicVaccineService getMedicVaccineService() {
        return medicVaccineService;
    }

    public void setMedicVaccineService(MedicVaccineService medicVaccineService) {
        this.medicVaccineService = medicVaccineService;
    }

    @Override
    public CURDService<MedicVaccine> getService() {
        return medicVaccineService;
    }

}
