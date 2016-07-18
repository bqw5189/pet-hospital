package com.fionapet.business.facade;

import com.fionapet.business.entity.BaseMedicPrescription;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.BaseMedicPrescriptionService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 处方
* Created by tom on 2016-07-18 15:56:24.
 */
public class BaseMedicPrescriptionRestServiceImpl extends RestServiceBase<BaseMedicPrescription> implements BaseMedicPrescriptionRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(BaseMedicPrescriptionRestServiceImpl.class);

    private BaseMedicPrescriptionService baseMedicPrescriptionService;

    public BaseMedicPrescriptionService getBaseMedicPrescriptionService() {
        return baseMedicPrescriptionService;
    }

    public void setBaseMedicPrescriptionService(BaseMedicPrescriptionService baseMedicPrescriptionService) {
        this.baseMedicPrescriptionService = baseMedicPrescriptionService;
    }

    @Override
    public CURDService<BaseMedicPrescription> getService() {
        return baseMedicPrescriptionService;
    }

}
