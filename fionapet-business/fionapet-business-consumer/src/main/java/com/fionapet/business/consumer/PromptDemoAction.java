package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.Prompt;
import com.fionapet.business.service.PromptService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-18 11:09:24.
 */
public class PromptDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(PromptDemoAction.class);
    private PromptService promptService;

    public PromptService getPromptService() {
        return promptService;
    }

    public void setPromptService(PromptService promptService) {
        this.promptService = promptService;
    }

    public void start() throws Exception {
        List<Prompt> prompts = promptService.listAll();
        assert(prompts != null);
        assert(prompts.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(prompts));
    }
}
