package com.fionapet.business.service;

import com.fionapet.business.entity.CMSEntity;
import com.fionapet.business.entity.StatusEntity;
import org.dubbo.x.service.CURDServiceBase;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by tom on 16/9/19.
 */
public abstract class StatusCURDServiceBase<T extends CMSEntity> extends CURDServiceBase<T> {
    @Override
    public T createOrUpdte(T entity) {
        if (entity.getStatus() == null){
            entity.setStatus(StatusEntity.DEFAULT());
        }
        return super.createOrUpdte(entity);
    }
}
