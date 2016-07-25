package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.InputMoneyRecord;
import com.fionapet.business.service.InputMoneyRecordService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-25 09:32:32.
 */
public class InputMoneyRecordDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(InputMoneyRecordDemoAction.class);
    private InputMoneyRecordService inputMoneyRecordService;

    public InputMoneyRecordService getInputMoneyRecordService() {
        return inputMoneyRecordService;
    }

    public void setInputMoneyRecordService(InputMoneyRecordService inputMoneyRecordService) {
        this.inputMoneyRecordService = inputMoneyRecordService;
    }

    public void start() throws Exception {
        List<InputMoneyRecord> inputMoneyRecords = inputMoneyRecordService.listAll();
        assert(inputMoneyRecords != null);
        assert(inputMoneyRecords.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(inputMoneyRecords));
    }
}
