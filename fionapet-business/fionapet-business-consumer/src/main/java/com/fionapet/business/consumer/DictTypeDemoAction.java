package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.DictType;
import com.fionapet.business.service.DictTypeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-31 16:42:53.
 */
public class DictTypeDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(DictTypeDemoAction.class);
    private DictTypeService dictTypeService;

    public DictTypeService getDictTypeService() {
        return dictTypeService;
    }

    public void setDictTypeService(DictTypeService dictTypeService) {
        this.dictTypeService = dictTypeService;
    }

    public void start() throws Exception {
        List<DictType> dictTypes = dictTypeService.listAll();
        assert(dictTypes != null);
        assert(dictTypes.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(dictTypes));
    }
}
