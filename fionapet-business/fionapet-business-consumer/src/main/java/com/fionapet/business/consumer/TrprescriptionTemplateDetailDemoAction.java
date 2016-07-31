package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.TrprescriptionTemplateDetail;
import com.fionapet.business.service.TrprescriptionTemplateDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-31 16:42:51.
 */
public class TrprescriptionTemplateDetailDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(TrprescriptionTemplateDetailDemoAction.class);
    private TrprescriptionTemplateDetailService trprescriptionTemplateDetailService;

    public TrprescriptionTemplateDetailService getTrprescriptionTemplateDetailService() {
        return trprescriptionTemplateDetailService;
    }

    public void setTrprescriptionTemplateDetailService(TrprescriptionTemplateDetailService trprescriptionTemplateDetailService) {
        this.trprescriptionTemplateDetailService = trprescriptionTemplateDetailService;
    }

    public void start() throws Exception {
        List<TrprescriptionTemplateDetail> trprescriptionTemplateDetails = trprescriptionTemplateDetailService.listAll();
        assert(trprescriptionTemplateDetails != null);
        assert(trprescriptionTemplateDetails.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(trprescriptionTemplateDetails));
    }
}
