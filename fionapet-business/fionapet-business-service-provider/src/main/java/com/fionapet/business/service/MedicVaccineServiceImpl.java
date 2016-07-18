package com.fionapet.business.service;

import com.fionapet.business.entity.MedicVaccine;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.fionapet.business.repository.MedicVaccineDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  育苗表
* Created by tom on 2016-07-18 11:56:09.
 */
public class MedicVaccineServiceImpl extends CURDServiceBase<MedicVaccine> implements MedicVaccineService {
    @Autowired
    private MedicVaccineDao medicVaccineDao;

    @Override
    public DaoBase<MedicVaccine> getDao() {
        return medicVaccineDao;
    }
}
