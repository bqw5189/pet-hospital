package com.fionapet.business.service;

import com.fionapet.business.entity.MedicChemicalexam;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.MedicChemicalexamDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  化验单明细
* Created by tom on 2016-07-31 16:42:52.
 */
public class MedicChemicalexamServiceImpl extends CURDServiceBase<MedicChemicalexam> implements MedicChemicalexamService {
    @Autowired
    private MedicChemicalexamDao medicChemicalexamDao;

    @Override
    public DaoBase<MedicChemicalexam> getDao() {
        return medicChemicalexamDao;
    }
}
