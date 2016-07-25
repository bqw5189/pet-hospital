package com.fionapet.business.facade;

import com.fionapet.business.entity.MedicAppliance;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.MedicApplianceService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 医生器具表
* Created by tom on 2016-07-25 09:32:34.
 */
public class MedicApplianceRestServiceImpl extends RestServiceBase<MedicAppliance> implements MedicApplianceRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(MedicApplianceRestServiceImpl.class);

    private MedicApplianceService medicApplianceService;

    public MedicApplianceService getMedicApplianceService() {
        return medicApplianceService;
    }

    public void setMedicApplianceService(MedicApplianceService medicApplianceService) {
        this.medicApplianceService = medicApplianceService;
    }

    @Override
    public CURDService<MedicAppliance> getService() {
        return medicApplianceService;
    }

}
