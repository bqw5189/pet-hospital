package com.fionapet.business.service;

import com.fionapet.business.repository.DaoBase;

import java.util.List;

/**
 * @author baiqw
 */
public abstract class CURDServiceBase<T> implements CURDService<T> {
    @Override
    public List<T> listAll() {
        return getDao().findAllByOrderByCreateDateAsc();
    }

    @Override
    public T createOrUpdte(T entity) {
        return getDao().save(entity);
    }

    @Override
    public void delete(String uuid) {
        getDao().delete(uuid);
    }

    public abstract DaoBase<T> getDao();
}
