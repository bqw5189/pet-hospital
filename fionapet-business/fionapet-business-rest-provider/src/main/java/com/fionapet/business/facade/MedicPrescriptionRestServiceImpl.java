package com.fionapet.business.facade;

import com.fionapet.business.entity.MedicPrescription;
import com.fionapet.business.service.CURDService;
import com.fionapet.business.service.MedicPrescriptionService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 医生开处方
 * User: baiqw
 * Date: 14-12-9
 * Time: 下午3:45
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
