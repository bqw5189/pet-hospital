package com.fionapet.business.service;

import com.fionapet.business.entity.PrescriptionTemplateDetail;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.PrescriptionTemplateDetailDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  处方模版明细
* Created by tom on 2016-07-31 16:42:51.
 */
public class PrescriptionTemplateDetailServiceImpl extends CURDServiceBase<PrescriptionTemplateDetail> implements PrescriptionTemplateDetailService {
    @Autowired
    private PrescriptionTemplateDetailDao prescriptionTemplateDetailDao;

    @Override
    public DaoBase<PrescriptionTemplateDetail> getDao() {
        return prescriptionTemplateDetailDao;
    }
}
