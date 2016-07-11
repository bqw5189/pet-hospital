package com.fionapet.business.service;

import com.fionapet.business.entity.MedicChemicalexam;
import com.fionapet.business.repository.DaoBase;
import com.fionapet.business.repository.MedicChemicalexamDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  化验单明细
 * @author baiqw
 */
public class MedicChemicalexamServiceImpl extends CURDServiceBase<MedicChemicalexam> implements MedicChemicalexamService {
    @Autowired
    private MedicChemicalexamDao medicChemicalexamDao;

    @Override
    public DaoBase<MedicChemicalexam> getDao() {
        return medicChemicalexamDao;
    }
}
