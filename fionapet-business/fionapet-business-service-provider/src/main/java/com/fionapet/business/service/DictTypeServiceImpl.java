package com.fionapet.business.service;

import com.fionapet.business.entity.DictType;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.DictTypeDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  字典类型
* Created by tom on 2016-07-31 16:42:53.
 */
public class DictTypeServiceImpl extends CURDServiceBase<DictType> implements DictTypeService {
    @Autowired
    private DictTypeDao dictTypeDao;

    @Override
    public DaoBase<DictType> getDao() {
        return dictTypeDao;
    }
}
