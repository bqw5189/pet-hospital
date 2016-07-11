package com.fionapet.business.service;

import com.fionapet.business.entity.PrescriptionTemplateType;
import com.fionapet.business.repository.DaoBase;
import com.fionapet.business.repository.PrescriptionTemplateTypeDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  处方模版类型
 * @author baiqw
 */
public class PrescriptionTemplateTypeServiceImpl extends CURDServiceBase<PrescriptionTemplateType> implements PrescriptionTemplateTypeService {
    @Autowired
    private PrescriptionTemplateTypeDao prescriptionTemplateTypeDao;

    @Override
    public DaoBase<PrescriptionTemplateType> getDao() {
        return prescriptionTemplateTypeDao;
    }
}
