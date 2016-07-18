package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.CheckProcessSheet;
import com.fionapet.business.service.CheckProcessSheetService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-18 11:09:24.
 */
public class CheckProcessSheetDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(CheckProcessSheetDemoAction.class);
    private CheckProcessSheetService checkProcessSheetService;

    public CheckProcessSheetService getCheckProcessSheetService() {
        return checkProcessSheetService;
    }

    public void setCheckProcessSheetService(CheckProcessSheetService checkProcessSheetService) {
        this.checkProcessSheetService = checkProcessSheetService;
    }

    public void start() throws Exception {
        List<CheckProcessSheet> checkProcessSheets = checkProcessSheetService.listAll();
        assert(checkProcessSheets != null);
        assert(checkProcessSheets.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(checkProcessSheets));
    }
}
