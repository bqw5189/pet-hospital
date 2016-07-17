package com.fionapet.business.service;

import com.fionapet.business.entity.PrescriptionTemplateDetail;
import com.fionapet.business.repository.DaoBase;
import com.fionapet.business.repository.PrescriptionTemplateDetailDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  处方模版明细
 * @author baiqw
 */
public class PrescriptionTemplateDetailServiceImpl extends CURDServiceBase<PrescriptionTemplateDetail> implements PrescriptionTemplateDetailService {
    @Autowired
    private PrescriptionTemplateDetailDao prescriptionTemplateDetailDao;

    @Override
    public DaoBase<PrescriptionTemplateDetail> getDao() {
        return prescriptionTemplateDetailDao;
    }
}
