package com.fionapet.business.facade;

import com.fionapet.business.entity.InHospitalRecord;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.InHospitalRecordService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 医院记录表
* Created by tom on 2016-07-25 09:32:32.
 */
public class InHospitalRecordRestServiceImpl extends RestServiceBase<InHospitalRecord> implements InHospitalRecordRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(InHospitalRecordRestServiceImpl.class);

    private InHospitalRecordService inHospitalRecordService;

    public InHospitalRecordService getInHospitalRecordService() {
        return inHospitalRecordService;
    }

    public void setInHospitalRecordService(InHospitalRecordService inHospitalRecordService) {
        this.inHospitalRecordService = inHospitalRecordService;
    }

    @Override
    public CURDService<InHospitalRecord> getService() {
        return inHospitalRecordService;
    }

}
