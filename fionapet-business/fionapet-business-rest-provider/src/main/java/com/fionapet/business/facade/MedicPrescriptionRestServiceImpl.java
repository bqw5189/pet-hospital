package com.fionapet.business.facade;

import com.fionapet.business.entity.MedicPrescription;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.MedicPrescriptionService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 医生处方明细
* Created by tom on 2016-07-18 11:56:08.
 */
public class MedicPrescriptionRestServiceImpl extends RestServiceBase<MedicPrescription> implements MedicPrescriptionRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(MedicPrescriptionRestServiceImpl.class);

    private MedicPrescriptionService medicPrescriptionService;

    public MedicPrescriptionService getMedicPrescriptionService() {
        return medicPrescriptionService;
    }

    public void setMedicPrescriptionService(MedicPrescriptionService medicPrescriptionService) {
        this.medicPrescriptionService = medicPrescriptionService;
    }

    @Override
    public CURDService<MedicPrescription> getService() {
        return medicPrescriptionService;
    }

}
