package com.fionapet.business.service;

import com.fionapet.business.entity.MedicChemicalExamDetail;
import com.fionapet.business.repository.DaoBase;
import com.fionapet.business.repository.MedicChemicalExamDetailDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  化验单明细
 * @author baiqw
 */
public class MedicChemicalExamDetailServiceImpl extends CURDServiceBase<MedicChemicalExamDetail> implements MedicChemicalExamDetailService {
    @Autowired
    private MedicChemicalExamDetailDao medicChemicalExamDetailDao;

    @Override
    public DaoBase<MedicChemicalExamDetail> getDao() {
        return medicChemicalExamDetailDao;
    }
}
