package com.fionapet.business.service;

import com.fionapet.business.entity.TrprescriptionTemplateDetail;
import com.fionapet.business.repository.DaoBase;
import com.fionapet.business.repository.TrprescriptionTemplateDetailDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  处方模版明细
 * @author baiqw
 */
public class TrprescriptionTemplateDetailServiceImpl extends CURDServiceBase<TrprescriptionTemplateDetail> implements TrprescriptionTemplateDetailService {
    @Autowired
    private TrprescriptionTemplateDetailDao trprescriptionTemplateDetailDao;

    @Override
    public DaoBase<TrprescriptionTemplateDetail> getDao() {
        return trprescriptionTemplateDetailDao;
    }
}
