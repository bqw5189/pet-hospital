package com.fionapet.business.facade;

import com.fionapet.business.entity.MedicPrescriptionDetail;
import com.fionapet.business.service.CURDService;
import com.fionapet.business.service.MedicPrescriptionDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 医生处方明细
 * User: baiqw
 * Date: 14-12-9
 * Time: 下午3:45
 */
public class MedicPrescriptionDetailRestServiceImpl extends RestServiceBase<MedicPrescriptionDetail> implements MedicPrescriptionDetailRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(MedicPrescriptionDetailRestServiceImpl.class);

    private MedicPrescriptionDetailService medicPrescriptionDetailService;

    public MedicPrescriptionDetailService getMedicPrescriptionDetailService() {
        return medicPrescriptionDetailService;
    }

    public void setMedicPrescriptionDetailService(MedicPrescriptionDetailService medicPrescriptionDetailService) {
        this.medicPrescriptionDetailService = medicPrescriptionDetailService;
    }

    @Override
    public CURDService<MedicPrescriptionDetail> getService() {
        return medicPrescriptionDetailService;
    }

}
