package com.fionapet.business.facade;

import com.fionapet.business.entity.InHospitalPrescriptionDetail;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.InHospitalPrescriptionDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 住院处方明细
* Created by tom on 2016-07-18 15:37:44.
 */
public class InHospitalPrescriptionDetailRestServiceImpl extends RestServiceBase<InHospitalPrescriptionDetail> implements InHospitalPrescriptionDetailRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(InHospitalPrescriptionDetailRestServiceImpl.class);

    private InHospitalPrescriptionDetailService inHospitalPrescriptionDetailService;

    public InHospitalPrescriptionDetailService getInHospitalPrescriptionDetailService() {
        return inHospitalPrescriptionDetailService;
    }

    public void setInHospitalPrescriptionDetailService(InHospitalPrescriptionDetailService inHospitalPrescriptionDetailService) {
        this.inHospitalPrescriptionDetailService = inHospitalPrescriptionDetailService;
    }

    @Override
    public CURDService<InHospitalPrescriptionDetail> getService() {
        return inHospitalPrescriptionDetailService;
    }

}
