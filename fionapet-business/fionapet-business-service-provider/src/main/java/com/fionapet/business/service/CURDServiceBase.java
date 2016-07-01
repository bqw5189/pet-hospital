package com.fionapet.business.service;

import com.fionapet.business.entity.CMSEntity;
import com.fionapet.business.repository.DaoBase;
import org.apache.commons.lang3.StringUtils;

import java.util.List;

/**
 * @author baiqw
 */
public abstract class CURDServiceBase<T extends CMSEntity> implements CURDService<T> {
    private String token;

    @Override
    public String getToken() {
        return token;
    }

    @Override
    public void setToken(String token) {
        this.token = token;
    }

    @Override
    public List<T> listAll() {
        return getDao().findAllByOrderByCreateDateAsc();
    }

    @Override
    public T createOrUpdte(T entity) {
        if (StringUtils.isEmpty(entity.getCreateUserId())){
            entity.setCreateUserId(getToken());
        }

        entity.setUpdateUserId(getToken());

        getDao().save(entity);

        entity = getDao().findOne(entity.getUuid());

        return entity;
    }

    @Override
    public void delete(String uuid) {
        getDao().delete(uuid);
    }

    public abstract DaoBase<T> getDao();
}
