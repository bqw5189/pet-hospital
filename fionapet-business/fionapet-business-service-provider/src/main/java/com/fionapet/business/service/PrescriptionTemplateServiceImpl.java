package com.fionapet.business.service;

import com.fionapet.business.entity.PrescriptionTemplate;
import com.fionapet.business.repository.DaoBase;
import com.fionapet.business.repository.PrescriptionTemplateDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  处方模版明细
 * @author baiqw
 */
public class PrescriptionTemplateServiceImpl extends CURDServiceBase<PrescriptionTemplate> implements PrescriptionTemplateService {
    @Autowired
    private PrescriptionTemplateDao prescriptionTemplateDao;

    @Override
    public DaoBase<PrescriptionTemplate> getDao() {
        return prescriptionTemplateDao;
    }
}
