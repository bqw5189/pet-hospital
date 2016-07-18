package com.fionapet.business.facade;

import com.fionapet.business.entity.MedicPrescriptionDetail;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.MedicPrescriptionDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 医生处方明细
* Created by tom on 2016-07-18 11:56:10.
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
