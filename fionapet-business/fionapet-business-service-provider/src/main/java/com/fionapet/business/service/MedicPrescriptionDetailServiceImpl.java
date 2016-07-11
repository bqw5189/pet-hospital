package com.fionapet.business.service;

import com.fionapet.business.entity.MedicPrescriptionDetail;
import com.fionapet.business.repository.DaoBase;
import com.fionapet.business.repository.MedicPrescriptionDetailDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  医生处方明细
 * @author baiqw
 */
public class MedicPrescriptionDetailServiceImpl extends CURDServiceBase<MedicPrescriptionDetail> implements MedicPrescriptionDetailService {
    @Autowired
    private MedicPrescriptionDetailDao medicPrescriptionDetailDao;

    @Override
    public DaoBase<MedicPrescriptionDetail> getDao() {
        return medicPrescriptionDetailDao;
    }
}
