package com.fionapet.business.service;

import com.fionapet.business.entity.DictTypeDetail;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.DictTypeDetailDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  字典类型明细
* Created by tom on 2016-07-31 16:42:53.
 */
public class DictTypeDetailServiceImpl extends CURDServiceBase<DictTypeDetail> implements DictTypeDetailService {
    @Autowired
    private DictTypeDetailDao dictTypeDetailDao;

    @Override
    public DaoBase<DictTypeDetail> getDao() {
        return dictTypeDetailDao;
    }
}
