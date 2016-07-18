package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.MedicMedictreatRecord;
import com.fionapet.business.service.MedicMedictreatRecordService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-18 11:09:24.
 */
public class MedicMedictreatRecordDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(MedicMedictreatRecordDemoAction.class);
    private MedicMedictreatRecordService medicMedictreatRecordService;

    public MedicMedictreatRecordService getMedicMedictreatRecordService() {
        return medicMedictreatRecordService;
    }

    public void setMedicMedictreatRecordService(MedicMedictreatRecordService medicMedictreatRecordService) {
        this.medicMedictreatRecordService = medicMedictreatRecordService;
    }

    public void start() throws Exception {
        List<MedicMedictreatRecord> medicMedictreatRecords = medicMedictreatRecordService.listAll();
        assert(medicMedictreatRecords != null);
        assert(medicMedictreatRecords.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(medicMedictreatRecords));
    }
}
