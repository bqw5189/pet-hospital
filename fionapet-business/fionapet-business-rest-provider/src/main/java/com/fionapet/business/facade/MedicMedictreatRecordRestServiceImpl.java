package com.fionapet.business.facade;

import com.fionapet.business.entity.MedicMedictreatRecord;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.MedicMedictreatRecordService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 医生处理记录
* Created by tom on 2016-07-18 11:56:10.
 */
public class MedicMedictreatRecordRestServiceImpl extends RestServiceBase<MedicMedictreatRecord> implements MedicMedictreatRecordRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(MedicMedictreatRecordRestServiceImpl.class);

    private MedicMedictreatRecordService medicMedictreatRecordService;

    public MedicMedictreatRecordService getMedicMedictreatRecordService() {
        return medicMedictreatRecordService;
    }

    public void setMedicMedictreatRecordService(MedicMedictreatRecordService medicMedictreatRecordService) {
        this.medicMedictreatRecordService = medicMedictreatRecordService;
    }

    @Override
    public CURDService<MedicMedictreatRecord> getService() {
        return medicMedictreatRecordService;
    }

}
