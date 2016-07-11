package com.fionapet.business.service;

import com.fionapet.business.entity.MedicPrescription;
import com.fionapet.business.repository.DaoBase;
import com.fionapet.business.repository.MedicPrescriptionDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  医生开处方
 * @author baiqw
 */
public class MedicPrescriptionServiceImpl extends CURDServiceBase<MedicPrescription> implements MedicPrescriptionService {
    @Autowired
    private MedicPrescriptionDao medicPrescriptionDao;

    @Override
    public DaoBase<MedicPrescription> getDao() {
        return medicPrescriptionDao;
    }
}
