package com.fionapet.business.service;

import com.fionapet.business.entity.TrprescriptionTemplateType;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.TrprescriptionTemplateTypeDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  药方模版类型
* Created by tom on 2016-07-31 16:42:51.
 */
public class TrprescriptionTemplateTypeServiceImpl extends CURDServiceBase<TrprescriptionTemplateType> implements TrprescriptionTemplateTypeService {
    @Autowired
    private TrprescriptionTemplateTypeDao trprescriptionTemplateTypeDao;

    @Override
    public DaoBase<TrprescriptionTemplateType> getDao() {
        return trprescriptionTemplateTypeDao;
    }
}
