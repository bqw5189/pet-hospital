package com.fionapet.business.service;

import com.fionapet.business.entity.BaseMedicPrescription;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.BaseMedicPrescriptionDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  处方
* Created by tom on 2016-07-18 15:56:24.
 */
public class BaseMedicPrescriptionServiceImpl extends CURDServiceBase<BaseMedicPrescription> implements BaseMedicPrescriptionService {
    @Autowired
    private BaseMedicPrescriptionDao baseMedicPrescriptionDao;

    @Override
    public DaoBase<BaseMedicPrescription> getDao() {
        return baseMedicPrescriptionDao;
    }
}
