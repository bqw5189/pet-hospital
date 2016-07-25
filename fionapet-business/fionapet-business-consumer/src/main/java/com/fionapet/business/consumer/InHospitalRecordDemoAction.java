package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.InHospitalRecord;
import com.fionapet.business.service.InHospitalRecordService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-25 09:32:32.
 */
public class InHospitalRecordDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(InHospitalRecordDemoAction.class);
    private InHospitalRecordService inHospitalRecordService;

    public InHospitalRecordService getInHospitalRecordService() {
        return inHospitalRecordService;
    }

    public void setInHospitalRecordService(InHospitalRecordService inHospitalRecordService) {
        this.inHospitalRecordService = inHospitalRecordService;
    }

    public void start() throws Exception {
        List<InHospitalRecord> inHospitalRecords = inHospitalRecordService.listAll();
        assert(inHospitalRecords != null);
        assert(inHospitalRecords.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(inHospitalRecords));
    }
}
