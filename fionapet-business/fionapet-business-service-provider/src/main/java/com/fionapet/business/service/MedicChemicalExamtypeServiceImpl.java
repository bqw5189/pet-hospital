package com.fionapet.business.service;

import com.fionapet.business.entity.MedicChemicalExamtype;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.MedicChemicalExamtypeDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  医生化验实例类型细节表
* Created by tom on 2016-07-18 11:56:10.
 */
public class MedicChemicalExamtypeServiceImpl extends CURDServiceBase<MedicChemicalExamtype> implements MedicChemicalExamtypeService {
    @Autowired
    private MedicChemicalExamtypeDao medicChemicalExamtypeDao;

    @Override
    public DaoBase<MedicChemicalExamtype> getDao() {
        return medicChemicalExamtypeDao;
    }
}
