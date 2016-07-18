package com.fionapet.business.facade;

import com.fionapet.business.entity.MedicSupplies;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.MedicSuppliesService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 医生供应量表
* Created by tom on 2016-07-18 11:56:09.
 */
public class MedicSuppliesRestServiceImpl extends RestServiceBase<MedicSupplies> implements MedicSuppliesRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(MedicSuppliesRestServiceImpl.class);

    private MedicSuppliesService medicSuppliesService;

    public MedicSuppliesService getMedicSuppliesService() {
        return medicSuppliesService;
    }

    public void setMedicSuppliesService(MedicSuppliesService medicSuppliesService) {
        this.medicSuppliesService = medicSuppliesService;
    }

    @Override
    public CURDService<MedicSupplies> getService() {
        return medicSuppliesService;
    }

}
