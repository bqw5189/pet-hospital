package com.fionapet.business.service;

import com.fionapet.business.entity.MedicChemicalExamDetail;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.MedicChemicalExamDetailDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  化验单明细
* Created by tom on 2016-07-31 16:36:25.
 */
public class MedicChemicalExamDetailServiceImpl extends CURDServiceBase<MedicChemicalExamDetail> implements MedicChemicalExamDetailService {
    @Autowired
    private MedicChemicalExamDetailDao medicChemicalExamDetailDao;

    @Override
    public DaoBase<MedicChemicalExamDetail> getDao() {
        return medicChemicalExamDetailDao;
    }
}
