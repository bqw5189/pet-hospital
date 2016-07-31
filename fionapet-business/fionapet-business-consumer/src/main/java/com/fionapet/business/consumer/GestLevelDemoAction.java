package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.GestLevel;
import com.fionapet.business.service.GestLevelService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-31 16:36:25.
 */
public class GestLevelDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(GestLevelDemoAction.class);
    private GestLevelService gestLevelService;

    public GestLevelService getGestLevelService() {
        return gestLevelService;
    }

    public void setGestLevelService(GestLevelService gestLevelService) {
        this.gestLevelService = gestLevelService;
    }

    public void start() throws Exception {
        List<GestLevel> gestLevels = gestLevelService.listAll();
        assert(gestLevels != null);
        assert(gestLevels.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(gestLevels));
    }
}
