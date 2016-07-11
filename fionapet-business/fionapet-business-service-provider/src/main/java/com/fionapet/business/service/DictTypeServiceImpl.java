package com.fionapet.business.service;

import com.fionapet.business.entity.DictType;
import com.fionapet.business.repository.DaoBase;
import com.fionapet.business.repository.DictTypeDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  字典类型
 * @author baiqw
 */
public class DictTypeServiceImpl extends CURDServiceBase<DictType> implements DictTypeService {
    @Autowired
    private DictTypeDao dictTypeDao;

    @Override
    public DaoBase<DictType> getDao() {
        return dictTypeDao;
    }
}
