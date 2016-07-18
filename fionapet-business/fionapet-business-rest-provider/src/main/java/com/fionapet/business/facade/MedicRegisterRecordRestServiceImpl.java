package com.fionapet.business.facade;

import com.fionapet.business.entity.MedicRegisterRecord;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.MedicRegisterRecordService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 医生登记记录明细
* Created by tom on 2016-07-18 11:56:10.
 */
public class MedicRegisterRecordRestServiceImpl extends RestServiceBase<MedicRegisterRecord> implements MedicRegisterRecordRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(MedicRegisterRecordRestServiceImpl.class);

    private MedicRegisterRecordService medicRegisterRecordService;

    public MedicRegisterRecordService getMedicRegisterRecordService() {
        return medicRegisterRecordService;
    }

    public void setMedicRegisterRecordService(MedicRegisterRecordService medicRegisterRecordService) {
        this.medicRegisterRecordService = medicRegisterRecordService;
    }

    @Override
    public CURDService<MedicRegisterRecord> getService() {
        return medicRegisterRecordService;
    }

}
