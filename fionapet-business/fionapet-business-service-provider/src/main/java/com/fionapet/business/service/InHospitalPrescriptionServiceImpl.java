package com.fionapet.business.service;

import com.fionapet.business.entity.InHospitalPrescription;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.InHospitalPrescriptionDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  住院处方
* Created by tom on 2016-07-18 15:37:44.
 */
public class InHospitalPrescriptionServiceImpl extends CURDServiceBase<InHospitalPrescription> implements InHospitalPrescriptionService {
    @Autowired
    private InHospitalPrescriptionDao inHospitalPrescriptionDao;

    @Override
    public DaoBase<InHospitalPrescription> getDao() {
        return inHospitalPrescriptionDao;
    }
}
