package com.fionapet.business.facade;

import com.fionapet.business.entity.ApproveStatusEntity;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.fionapet.business.service.ApproveStatusEntityService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 审批状态实体
* Created by tom on 2016-07-18 11:56:11.
 */
public class ApproveStatusEntityRestServiceImpl extends RestServiceBase<ApproveStatusEntity> implements ApproveStatusEntityRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(ApproveStatusEntityRestServiceImpl.class);

    private ApproveStatusEntityService approveStatusEntityService;

    public ApproveStatusEntityService getApproveStatusEntityService() {
        return approveStatusEntityService;
    }

    public void setApproveStatusEntityService(ApproveStatusEntityService approveStatusEntityService) {
        this.approveStatusEntityService = approveStatusEntityService;
    }

    @Override
    public CURDService<ApproveStatusEntity> getService() {
        return approveStatusEntityService;
    }

}
