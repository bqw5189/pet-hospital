package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.FosterRecord;
import com.fionapet.business.service.FosterRecordService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-25 09:32:32.
 */
public class FosterRecordDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(FosterRecordDemoAction.class);
    private FosterRecordService fosterRecordService;

    public FosterRecordService getFosterRecordService() {
        return fosterRecordService;
    }

    public void setFosterRecordService(FosterRecordService fosterRecordService) {
        this.fosterRecordService = fosterRecordService;
    }

    public void start() throws Exception {
        List<FosterRecord> fosterRecords = fosterRecordService.listAll();
        assert(fosterRecords != null);
        assert(fosterRecords.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(fosterRecords));
    }
}
