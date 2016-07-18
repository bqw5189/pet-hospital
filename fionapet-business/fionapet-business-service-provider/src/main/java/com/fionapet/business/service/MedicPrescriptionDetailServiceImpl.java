package com.fionapet.business.service;

import com.fionapet.business.entity.MedicPrescriptionDetail;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.MedicPrescriptionDetailDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  医生处方明细
* Created by tom on 2016-07-18 11:56:10.
 */
public class MedicPrescriptionDetailServiceImpl extends CURDServiceBase<MedicPrescriptionDetail> implements MedicPrescriptionDetailService {
    @Autowired
    private MedicPrescriptionDetailDao medicPrescriptionDetailDao;

    @Override
    public DaoBase<MedicPrescriptionDetail> getDao() {
        return medicPrescriptionDetailDao;
    }
}
