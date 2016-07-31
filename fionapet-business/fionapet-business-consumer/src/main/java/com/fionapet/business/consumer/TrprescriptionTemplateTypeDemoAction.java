package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.TrprescriptionTemplateType;
import com.fionapet.business.service.TrprescriptionTemplateTypeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-31 16:42:52.
 */
public class TrprescriptionTemplateTypeDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(TrprescriptionTemplateTypeDemoAction.class);
    private TrprescriptionTemplateTypeService trprescriptionTemplateTypeService;

    public TrprescriptionTemplateTypeService getTrprescriptionTemplateTypeService() {
        return trprescriptionTemplateTypeService;
    }

    public void setTrprescriptionTemplateTypeService(TrprescriptionTemplateTypeService trprescriptionTemplateTypeService) {
        this.trprescriptionTemplateTypeService = trprescriptionTemplateTypeService;
    }

    public void start() throws Exception {
        List<TrprescriptionTemplateType> trprescriptionTemplateTypes = trprescriptionTemplateTypeService.listAll();
        assert(trprescriptionTemplateTypes != null);
        assert(trprescriptionTemplateTypes.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(trprescriptionTemplateTypes));
    }
}
