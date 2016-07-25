package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.InHospitalRecordDetail;
import com.fionapet.business.service.InHospitalRecordDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-25 09:32:31.
 */
public class InHospitalRecordDetailDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(InHospitalRecordDetailDemoAction.class);
    private InHospitalRecordDetailService inHospitalRecordDetailService;

    public InHospitalRecordDetailService getInHospitalRecordDetailService() {
        return inHospitalRecordDetailService;
    }

    public void setInHospitalRecordDetailService(InHospitalRecordDetailService inHospitalRecordDetailService) {
        this.inHospitalRecordDetailService = inHospitalRecordDetailService;
    }

    public void start() throws Exception {
        List<InHospitalRecordDetail> inHospitalRecordDetails = inHospitalRecordDetailService.listAll();
        assert(inHospitalRecordDetails != null);
        assert(inHospitalRecordDetails.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(inHospitalRecordDetails));
    }
}
