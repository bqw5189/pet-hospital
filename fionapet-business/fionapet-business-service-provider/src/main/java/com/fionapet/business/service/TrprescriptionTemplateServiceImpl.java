package com.fionapet.business.service;

import com.fionapet.business.entity.TrprescriptionTemplate;
import com.fionapet.business.repository.DaoBase;
import com.fionapet.business.repository.TrprescriptionTemplateDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  处方模版明细
 * @author baiqw
 */
public class TrprescriptionTemplateServiceImpl extends CURDServiceBase<TrprescriptionTemplate> implements TrprescriptionTemplateService {
    @Autowired
    private TrprescriptionTemplateDao trprescriptionTemplateDao;

    @Override
    public DaoBase<TrprescriptionTemplate> getDao() {
        return trprescriptionTemplateDao;
    }
}
