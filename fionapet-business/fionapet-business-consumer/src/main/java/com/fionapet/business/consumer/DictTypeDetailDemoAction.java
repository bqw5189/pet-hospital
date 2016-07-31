package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.DictTypeDetail;
import com.fionapet.business.service.DictTypeDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-31 16:42:53.
 */
public class DictTypeDetailDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(DictTypeDetailDemoAction.class);
    private DictTypeDetailService dictTypeDetailService;

    public DictTypeDetailService getDictTypeDetailService() {
        return dictTypeDetailService;
    }

    public void setDictTypeDetailService(DictTypeDetailService dictTypeDetailService) {
        this.dictTypeDetailService = dictTypeDetailService;
    }

    public void start() throws Exception {
        List<DictTypeDetail> dictTypeDetails = dictTypeDetailService.listAll();
        assert(dictTypeDetails != null);
        assert(dictTypeDetails.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(dictTypeDetails));
    }
}
