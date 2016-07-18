package com.fionapet.business.facade;

import com.fionapet.business.entity.Prompt;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.PromptService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 急诊表
* Created by tom on 2016-07-18 11:56:10.
 */
public class PromptRestServiceImpl extends RestServiceBase<Prompt> implements PromptRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(PromptRestServiceImpl.class);

    private PromptService promptService;

    public PromptService getPromptService() {
        return promptService;
    }

    public void setPromptService(PromptService promptService) {
        this.promptService = promptService;
    }

    @Override
    public CURDService<Prompt> getService() {
        return promptService;
    }

}
