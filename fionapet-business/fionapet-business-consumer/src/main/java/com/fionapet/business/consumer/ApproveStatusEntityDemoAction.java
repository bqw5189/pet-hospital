package com.fionapet.business.consumer;


import com.alibaba.fastjson.JSON;
import com.fionapet.business.entity.ApproveStatusEntity;
import com.fionapet.business.service.ApproveStatusEntityService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2016-07-18 11:09:25.
 */
public class ApproveStatusEntityDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(ApproveStatusEntityDemoAction.class);
    private ApproveStatusEntityService approveStatusEntityService;

    public ApproveStatusEntityService getApproveStatusEntityService() {
        return approveStatusEntityService;
    }

    public void setApproveStatusEntityService(ApproveStatusEntityService approveStatusEntityService) {
        this.approveStatusEntityService = approveStatusEntityService;
    }

    public void start() throws Exception {
        List<ApproveStatusEntity> approveStatusEntitys = approveStatusEntityService.listAll();
        assert(approveStatusEntitys != null);
        assert(approveStatusEntitys.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(approveStatusEntitys));
    }
}
