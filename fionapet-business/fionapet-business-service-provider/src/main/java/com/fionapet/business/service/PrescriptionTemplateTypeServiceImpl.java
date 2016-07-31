package com.fionapet.business.service;

import com.fionapet.business.entity.PrescriptionTemplateType;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.PrescriptionTemplateTypeDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  处方模版类型
* Created by tom on 2016-07-31 16:42:52.
 */
public class PrescriptionTemplateTypeServiceImpl extends CURDServiceBase<PrescriptionTemplateType> implements PrescriptionTemplateTypeService {
    @Autowired
    private PrescriptionTemplateTypeDao prescriptionTemplateTypeDao;

    @Override
    public DaoBase<PrescriptionTemplateType> getDao() {
        return prescriptionTemplateTypeDao;
    }
}
