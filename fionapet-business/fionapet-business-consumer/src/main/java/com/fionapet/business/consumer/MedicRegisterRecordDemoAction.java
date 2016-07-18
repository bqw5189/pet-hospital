package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.MedicRegisterRecord;
import com.fionapet.business.service.MedicRegisterRecordService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-18 11:09:23.
 */
public class MedicRegisterRecordDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(MedicRegisterRecordDemoAction.class);
    private MedicRegisterRecordService medicRegisterRecordService;

    public MedicRegisterRecordService getMedicRegisterRecordService() {
        return medicRegisterRecordService;
    }

    public void setMedicRegisterRecordService(MedicRegisterRecordService medicRegisterRecordService) {
        this.medicRegisterRecordService = medicRegisterRecordService;
    }

    public void start() throws Exception {
        List<MedicRegisterRecord> medicRegisterRecords = medicRegisterRecordService.listAll();
        assert(medicRegisterRecords != null);
        assert(medicRegisterRecords.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(medicRegisterRecords));
    }
}
