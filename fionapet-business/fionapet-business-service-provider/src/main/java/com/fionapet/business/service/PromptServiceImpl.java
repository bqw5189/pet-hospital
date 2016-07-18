package com.fionapet.business.service;

import com.fionapet.business.entity.Prompt;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.PromptDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  急诊表
* Created by tom on 2016-07-18 11:56:10.
 */
public class PromptServiceImpl extends CURDServiceBase<Prompt> implements PromptService {
    @Autowired
    private PromptDao promptDao;

    @Override
    public DaoBase<Prompt> getDao() {
        return promptDao;
    }
}
