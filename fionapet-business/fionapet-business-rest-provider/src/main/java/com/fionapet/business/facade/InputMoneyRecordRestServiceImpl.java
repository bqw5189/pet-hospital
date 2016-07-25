package com.fionapet.business.facade;

import com.fionapet.business.entity.InputMoneyRecord;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.InputMoneyRecordService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 收款记录表
* Created by tom on 2016-07-25 09:32:32.
 */
public class InputMoneyRecordRestServiceImpl extends RestServiceBase<InputMoneyRecord> implements InputMoneyRecordRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(InputMoneyRecordRestServiceImpl.class);

    private InputMoneyRecordService inputMoneyRecordService;

    public InputMoneyRecordService getInputMoneyRecordService() {
        return inputMoneyRecordService;
    }

    public void setInputMoneyRecordService(InputMoneyRecordService inputMoneyRecordService) {
        this.inputMoneyRecordService = inputMoneyRecordService;
    }

    @Override
    public CURDService<InputMoneyRecord> getService() {
        return inputMoneyRecordService;
    }

}
