package com.fionapet.business.service;

import com.fionapet.business.entity.ApproveStatusEntity;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.ApproveStatusEntityDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  审批状态实体
* Created by tom on 2016-07-18 11:56:11.
 */
public class ApproveStatusEntityServiceImpl extends CURDServiceBase<ApproveStatusEntity> implements ApproveStatusEntityService {
    @Autowired
    private ApproveStatusEntityDao approveStatusEntityDao;

    @Override
    public DaoBase<ApproveStatusEntity> getDao() {
        return approveStatusEntityDao;
    }
}
