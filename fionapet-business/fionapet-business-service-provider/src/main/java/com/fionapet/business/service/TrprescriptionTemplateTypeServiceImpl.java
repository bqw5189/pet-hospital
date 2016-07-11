package com.fionapet.business.service;

import com.fionapet.business.entity.TrprescriptionTemplateType;
import com.fionapet.business.repository.DaoBase;
import com.fionapet.business.repository.TrprescriptionTemplateTypeDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  处方模版类型
 * @author baiqw
 */
public class TrprescriptionTemplateTypeServiceImpl extends CURDServiceBase<TrprescriptionTemplateType> implements TrprescriptionTemplateTypeService {
    @Autowired
    private TrprescriptionTemplateTypeDao trprescriptionTemplateTypeDao;

    @Override
    public DaoBase<TrprescriptionTemplateType> getDao() {
        return trprescriptionTemplateTypeDao;
    }
}
