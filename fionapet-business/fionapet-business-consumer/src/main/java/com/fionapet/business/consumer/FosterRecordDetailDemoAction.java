package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.FosterRecordDetail;
import com.fionapet.business.service.FosterRecordDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-25 09:32:31.
 */
public class FosterRecordDetailDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(FosterRecordDetailDemoAction.class);
    private FosterRecordDetailService fosterRecordDetailService;

    public FosterRecordDetailService getFosterRecordDetailService() {
        return fosterRecordDetailService;
    }

    public void setFosterRecordDetailService(FosterRecordDetailService fosterRecordDetailService) {
        this.fosterRecordDetailService = fosterRecordDetailService;
    }

    public void start() throws Exception {
        List<FosterRecordDetail> fosterRecordDetails = fosterRecordDetailService.listAll();
        assert(fosterRecordDetails != null);
        assert(fosterRecordDetails.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(fosterRecordDetails));
    }
}
