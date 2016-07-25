package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.GestPaidRecord;
import com.fionapet.business.service.GestPaidRecordService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-25 09:32:34.
 */
public class GestPaidRecordDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(GestPaidRecordDemoAction.class);
    private GestPaidRecordService gestPaidRecordService;

    public GestPaidRecordService getGestPaidRecordService() {
        return gestPaidRecordService;
    }

    public void setGestPaidRecordService(GestPaidRecordService gestPaidRecordService) {
        this.gestPaidRecordService = gestPaidRecordService;
    }

    public void start() throws Exception {
        List<GestPaidRecord> gestPaidRecords = gestPaidRecordService.listAll();
        assert(gestPaidRecords != null);
        assert(gestPaidRecords.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(gestPaidRecords));
    }
}
