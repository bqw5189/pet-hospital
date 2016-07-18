package com.fionapet.business.service;

import com.fionapet.business.entity.MedicPrescription;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.MedicPrescriptionDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  医生处方明细
* Created by tom on 2016-07-18 11:56:08.
 */
public class MedicPrescriptionServiceImpl extends CURDServiceBase<MedicPrescription> implements MedicPrescriptionService {
    @Autowired
    private MedicPrescriptionDao medicPrescriptionDao;

    @Override
    public DaoBase<MedicPrescription> getDao() {
        return medicPrescriptionDao;
    }
}
