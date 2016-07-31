package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.TrprescriptionTemplate;
import com.fionapet.business.service.TrprescriptionTemplateService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-31 16:36:25.
 */
public class TrprescriptionTemplateDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(TrprescriptionTemplateDemoAction.class);
    private TrprescriptionTemplateService trprescriptionTemplateService;

    public TrprescriptionTemplateService getTrprescriptionTemplateService() {
        return trprescriptionTemplateService;
    }

    public void setTrprescriptionTemplateService(TrprescriptionTemplateService trprescriptionTemplateService) {
        this.trprescriptionTemplateService = trprescriptionTemplateService;
    }

    public void start() throws Exception {
        List<TrprescriptionTemplate> trprescriptionTemplates = trprescriptionTemplateService.listAll();
        assert(trprescriptionTemplates != null);
        assert(trprescriptionTemplates.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(trprescriptionTemplates));
    }
}
