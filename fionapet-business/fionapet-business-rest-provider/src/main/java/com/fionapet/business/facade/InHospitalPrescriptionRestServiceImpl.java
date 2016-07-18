package com.fionapet.business.facade;

import com.fionapet.business.entity.InHospitalPrescription;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.InHospitalPrescriptionService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 住院处方
* Created by tom on 2016-07-18 15:37:44.
 */
public class InHospitalPrescriptionRestServiceImpl extends RestServiceBase<InHospitalPrescription> implements InHospitalPrescriptionRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(InHospitalPrescriptionRestServiceImpl.class);

    private InHospitalPrescriptionService inHospitalPrescriptionService;

    public InHospitalPrescriptionService getInHospitalPrescriptionService() {
        return inHospitalPrescriptionService;
    }

    public void setInHospitalPrescriptionService(InHospitalPrescriptionService inHospitalPrescriptionService) {
        this.inHospitalPrescriptionService = inHospitalPrescriptionService;
    }

    @Override
    public CURDService<InHospitalPrescription> getService() {
        return inHospitalPrescriptionService;
    }

}
